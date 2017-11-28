Program Jeu_De_Loie



{	//But: Faire un jeu de l'oie avec plusieurs regles :
			- Le joueur est caracterise par un nombre, qui indique sa place
			- Les cases vont de 1 à 66.
			- On avance de la somme du jet des deux dés.
			- Si on arrive sur la case 66, on gagne.
			- On recule du nombre de case en trop, si on arrive a plus de 66.
			- Il y a une oie toutes les 9 cases, qui double la somme des dés ( 9, 18, 27, 36, 45, 54) Sauf en 63.
			- Tête de mort en case 58 qui te fait retourner a la case 1.

	//Entrees: Appuyer sur Enter
	//Sorties: Indique la place, à chaque tour.}



CONST

	maxPlateau <- 66 : ENTIER
	désMin <- 2 : ENTIER
	désMax <- 12 : ENTIER


VAR
	
	place : ENTIER 
	somme, diff : ENTIER
	
	
DEBUT
	
	place<- 1 //Depart

	REPETER

		somme<- ALEATOIRE(désMax)
		somme<- (somme+2)
		ECRIRE ("Somme des dés: ", somme) //Otention de la somme des dés


		place<-(place + somme)

		SI (place=58) alors //Case tete de mort
			place<-1
			ECRIRE("Vous etes sur la case tete de mort, retour a la base depart !")
		FINSI
			
		SI (place=9) ALORS //toute les 9 cases = double dépassement sauf la case 63 
			place<-(place+somme)
		FINSI

		SI (place=18) ALORS
			place<-(place+somme)
		FINSI

		SI (place=27) ALORS
			place:=<-(place+somme)
		FINSI

		SI (place=36) ALORS
			place<-(place+somme)
		FINSI

		SI (place=45) ALORS
			place<-(place+somme)
		FINSI

		SI (place=54) ALORS
			place<-(place+somme)
		FINSI

		SI (place>66) ALORS //Superieur a 66, le joueur retourne a la case départ
				diff<-(place-66)
				place<-(66-diff)
		FINSI

		ECRIRE ("Place actuelle : ", place)
		

	JUSQUA (place=maxPlateau)  //Sortie de la boucle, le joueur est arrive place 66.
	
	SI (place=66) ALORS
		ECRIRE ('Vous avez gagne !')
	FINSI

FIN
