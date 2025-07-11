Capitaine=function(){
  print("Bonjour je vais prédire le résultat de votre match")
  H_URLTeam=as.factor(readline("Équipe à domicile :"));
  A_URLTeam=as.factor(readline("Équipe à l'extérieur :"));
  ratioH=NBAH[H_URLTeam==H_URLTeam,c(5:10)];
  ratioA=NBAA[A_URLTeam==A_URLTeam,c(11:16)];
  basket=data.frame(H_URLTeam=H_URLTeam,A_URLTeam=A_URLTeam,ratioH,ratioA);
  print("proba de gagner:");
  pr=mean(predict(logit2,newdata=basket,type="response"));
  print(pr)
}

