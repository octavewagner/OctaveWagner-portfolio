library(rvest)
library(dplyr)

# Lire la page des scores et des fixtures


fixtures_page <- read_html("https://fbref.com/en/comps/12/schedule/La-Liga-Scores-and-Fixtures")

# Extraire les liens vers les pages de match
match_urls <- fixtures_page %>%
  html_nodes("td.left a") %>%
  html_attr("href") %>%
  unique()

# Filtrer les liens pertinents : ceux contenant "/matches/" ET "Ligue-1" à la fin de l'URL
match_urls <- match_urls[grepl("/matches/", match_urls) & grepl("La-Liga$", match_urls)]

# Ajouter le domaine principal pour obtenir des URL complètes
match_urls <- paste0("https://fbref.com", match_urls)



library(worldfootballR)

# Initialiser une liste pour stocker les données
all_stats <- list()

# Boucle sur chaque URL de match
for (url in match_urls) {
  try({
    stats <- fb_advanced_match_stats(
      match_url = url,
      stat_type = "summary",
      team_or_player = "player"
    )
    
    if (!is.null(stats) && nrow(stats) > 0) {
      all_stats <- append(all_stats, list(stats))
      message("✅ Données récupérées pour : ", url)
    } else {
      message("⚠️ Aucune donnée disponible pour : ", url)
    }
    
    Sys.sleep(1.0)  # pause de 1.5 secondes
    
  }, silent = TRUE)
}



# Combiner toutes les données en un seul data frame
stats_joueurs <- bind_rows(all_stats)

write.csv(stats_joueurs, "stats_joueurs_liga.csv", row.names = FALSE)
