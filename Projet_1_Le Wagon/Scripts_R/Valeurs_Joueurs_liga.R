library(rvest)
library(dplyr)
library(stringr)
library(purrr)


# Étape 1 : Page principale de la Ligue 1
base_url <- "https://www.transfermarkt.com"
ligue1_url <- paste0(base_url, "/laliga/startseite/wettbewerb/ES1")
page <- read_html(ligue1_url)

# Étape 2 : Extraire les liens vers les clubs
club_nodes <- page %>% html_nodes("td.hauptlink a")
club_links <- club_nodes %>% html_attr("href") %>% unique()
club_names <- club_nodes %>% html_text() %>% unique()

# Garder uniquement les bons liens (filtres contre les sous-liens inutiles)
club_links <- club_links[grepl("/startseite/verein/", club_links)]

# Étape 3 : Fonction pour scraper un club
scrape_club <- function(club_url) {
  print(club_url)
  full_url <- paste0(base_url, club_url)
  club_page <- tryCatch(read_html(full_url), error = function(e) return(NULL))
  if (is.null(club_page)) return(NULL)
  
  # Extraire le nom du club depuis le titre ou un élément distinctif
  club_name <- club_page %>%
    html_node("h1") %>%               # souvent le nom du club est dans un <h1>
    html_text(trim = TRUE)
  
  # Extraire le tableau de l'effectif
  table_node <- club_page %>% html_node("table.items")
  if (is.na(table_node)) return(NULL)
  
  df <- table_node %>% html_table(fill = TRUE)
  
  # Nettoyage : retirer les lignes vides (souvent des sous-titres de poste)
  df <- df[!is.na(df[[1]]), ]
  
  # Garder uniquement 1ère, 2e et dernière colonne
  df <- df[, c(1, 2, ncol(df))]
  
  # Renommer la dernière colonne et nettoyer les noms
  df <- df %>%
    rename(Player_value = last_col()) %>%
    mutate(`#` = as.numeric(`#`), 
      !!names(.)[2] := stringr::str_extract(.[[2]], "^([^ ]+ ?){1,2}[^ ]+")
    ) %>% filter (!is.na(Player_value))
  
  return(df)
}


all_club_data <- map_dfr(club_links, scrape_club)


