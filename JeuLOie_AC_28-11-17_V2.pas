PROGRAM Jeu_De_Loie;

USES crt, sysutils;


CONST

	maxPlateau : INTEGER = 66;
	desMax : INTEGER = 10;


VAR

	place : INTEGER; 			
	somme, diff : INTEGER;
	des1, des2 :INTEGER;

BEGIN

	clrscr;

	REPEAT
          
          writeln('Veuillez saisir le nombre sur le des');
          readln (des1);
          writeln('Veuillez saisir le nombre sur le des');
          readln (des2);
          somme:=(des1+des2);
          IF (somme>=2) AND (somme<=12) THEN
          writeln ('somme des des:',somme);



		place:=(place + somme);

		IF (place=58) THEN //Case tete de mort
			begin
			place:=1;
			writeln('Vous etes sur la case tete de mort, retour a la case depart !');
			end;
			
		IF (place=9) THEN //toute les 9 cases = double dépassement sauf la case 63
			place:=(place+somme);

		IF (place=18) THEN
			place:=(place+somme);

		IF (place=27) THEN
			place:=(place+somme);

		IF (place=36) THEN
			place:=(place+somme);

		IF (place=45) THEN
			place:=(place+somme);

		IF (place=54) THEN
			place:=(place+somme);


		IF (place>66) THEN  //Superieur a 66, le joueur retourne a la case départ 
			begin
				diff:=(place-66);
				place:=(66-diff);
			end;

		writeln('Place actuelle : ', place);
		
		readln;

	UNTIL (place=maxPlateau);  //Sortie de la boucle, le joueur est arrive à la case 66.
	
	IF (place=66) THEN
		writeln('Vous avez gagne !');

	readln;

END.
