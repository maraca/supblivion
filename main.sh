#!/bin/bash
DIALOG=${DIALOG=dialog}

#Déclaration des variables

pvmax=99
x=1
y=1
ymin=1
xmin=1
ymax=10
xmax=10
stop=0
pv=99
pm=20
px=$xmax
py=1
xm1=3
ym1=4
pvmax=99
pmmax=20
xm2=7
ym2=22
xm3=20
ym3=7
xm4=30
ym4=30
objet_recup_pv_15=1
objet_recup_pv_30=1
objet_recup_magie_5=1
objet_recup_magie_10=1
pvmonstre=0
pv_monstre_lose=0
cash_money=100
niveau=1
perso=0
nom_heros=a
niveau=1
degat_epee=0
degat_magie=0
coef_monstre=10
vmin=5
coef_pv_lost=10
princesse_save=0
#########################################################
#		function tresor				#
#########################################################
function tresor(){
	$DIALOG --clear --title "Boss" \
	--msgbox "Vous voila enfin $nom_heros ... \n\n Après tout ce chemin à travers le donjon .. \n Je suppose que vous êtes venus chercher le trésor .. \n \n Vous ne l'aurez qu'a condition de me tuer \n \n Et je doute fort que vous réussissiez ahahahaha \n\n Préparez vous à mourir $nom_heros " 20 70

stop_final=1
# Tant que le joueur n'a pas lancé la bonne attaque, la boucle continue . Lorsqu'il lance la bonne attaque stop_final passe a 0 ce qui termine le jeu 
while [ $stop_final -eq 1 ]
do
fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15
$DIALOG --clear --title "Vous êtes dans la bataille " \
		--menu "Choisissez une action :" 20 51 4 \
		 "E" "Donner un coup d'épée" \
		 "Z" "Lancer un pouvoir magique"\
		 "H" "Envoyer un High Kick" \
		 "T" "Traiter le Boss de Bouffon"\
	  	 "P" "Lancer un Paikipu" 2> $fichtemp
choix=`cat $fichtemp`

# Choix des différentes attaques
case $choix in
		E)
		$DIALOG --clear --title "Boss" \
		--msgbox "Je ne crain pas les épées !" 5 40
		;;
		Z)
		$DIALOG --clear --title "Boss" \
		--msgbox "Je n'ai pas peur de votre magie !" 5 40
		;;
		H)
		$DIALOG --clear --title "Boss" \
		--msgbox "Tu t'es pris pour Jet Li ?" 5 40
		;;
		T)
		$DIALOG --clear --title "Boss" \
		--msgbox "..." 5 40
		;;
		P)
		$DIALOG --clear --title "Boss" \
		--msgbox "Mais c'est un Paikipu !\n Noooooooon !" 8 40
		stop_final=0
		;;
		*)
		$DIALOG --clear --title "Boss" \
		--msgbox "Vous ne pouvez pas quitter" 5 40
esac
done
sleep 1
# Scénario final
	$DIALOG --clear --title "Boss" \
	--msgbox "Tu es trop fort pour moi ... Je ne mérite plus de protéger le trésor .. \n Prends le , il est à toi " 8 40
	sleep 1
	$DIALOG --clear --title "Objet Recu" \
	--msgbox "Vous avez recu : Le Trésor !" 8 40
	sleep 1
	$DIALOG --clear --title "Action Jeu" \
	--msgbox "Fin du Jeu ..." 8 40
	

	
}
#########################################################
#		function princesse			#
#########################################################
function princesse(){
	clear
	echo "Vous êtes proche de la princesse du niveau $niveau .."
	sleep 3
	echo "Un monstre maléfique : Le JoJo Affreux s'est emparé d'elle !!" 
	sleep 3
	echo "Il vous faut la délivrer en utilisant la seule technique spéciale et inédite qui peux tuer le Super Jojo "
	sleep 4
	echo "Attention ! Préparez vous !"
	sleep 2

# Bataille contre le monstre de la princesse 


		$DIALOG --clear --title "Vous êtes dans la bataille " \
		--menu "Choisissez une action :" 20 51 4 \
		 "E" "Donner un coup d'épée" \
		 "Z" "Lancer un pouvoir magique"
		 echo "Vous avez fait très mal au Jojo !"
		 sleep 2
		$DIALOG --clear --title "Vous êtes dans la bataille " \
		--menu "Choisissez une action :" 20 51 4 \
		 "E" "Donner un coup d'épée" \
		 "Z" "Lancer un pouvoir magique"
		 
				echo "Attention le Jojo s'est affaibli  !!"
				sleep 2
				echo "C'est le moment d'utiliser la seule technique spéciale et inédite qui peux tuer le Super Jojo !"
				sleep 4
				$DIALOG --clear --title "Vous êtes dans la bataille " \
				--menu "Choisissez une action :" 20 51 4 \
				 "E" "Lyrical GunShot !!" 
				sleep 2
				echo "Vous avez tué Jojo grace au Lyrical GunSHOT !!"
				sleep 2
				clear                                   
#                                                                                 .       "
#                                                                                ....     "
#                                                                      .          ...     "
#                                                                      .        .....     "
#                                                                      ..      .....      "
#                                                                  ..  ...      ...       "
#                                                                .....  ...    .....      "
#                                                                 ........... .....       "
#                                                                  ...... .    ..         "
#                                                                      ..  ..  ..         "
#                                                                          .. ....        "
#                                                                           .  .,:.       "
#                                      .ic712US7.                      ..  . .i77,,.      "
#                                   :0MMMMMMMMMMM@;                     .,..:b9I6,,.      "
#                                 ;MMMM$00S,;b0#MMME.                   .:,vIt::Y:..      "
#                                ZMMU;  .tznUZbQ#MMMMY                   .Y9c:;;7t;.      "
#                               ZMM9v   vEWBQ00QB@MMM@W;              .. ;Yi7C6tS0BE2i    "
#                              iM@I7;czEQ0WWQQbbE8EWMMM@;            7U1cY:YSY7cz9AtZ#b   "
#                             .M@;.i;Y10BQ#@$Q81YY1z9Z6UY,         .#0A2C. :vcYc7tccz80   "
#                             A@i....:cA0WB$$@08WQ9Y;;7WWc        iM#16o: v@MMM@0Y;CoZX   "
#                             @Q#MM#E80W$WQQ0@@@@bon1Y7QM0i      7M0CYIIW$WM@@@##Uivt8.   "
#                            YMMMMMMM#E80$#B$M@#WBW6ooo8@QE     2@2o7;XBM#EEEEQ0bZc:cZ    "
#                            #M   #MMMM@E8#@$0##B#B#MMMMo$M7   $@b0@c;;IMQ990WW87:inS7    "
#                            @7 $ZMMMMMMMM@@8U#M@@MMM,tM. @M ,#@8I99Y;;.$@$BW0Zc.  XX     "
#                           ,MWoM$18EAU0EMzWBZcWM#$@E7IMIt0A2@Q2oz;;t7viY#@#WEn;i:iv:     "
#                           QMBUBBovi;vt0#Q$o7 .z@#BW00I7XioBZAAIt. Y9o77XU0QE2UASX1c     "
#                          .M#SYCttCY7o8EbAt9n iiY#M@WA8EQEbAzzCcYi:iczz1Y:vii77Ctz88$.   "
#                          @M@QZEEbb00E2XXzb$7 i;n7c#Wb6ZBQZUX;cSz;;cY7v...;i::;YYtU8W    "
#                         $M$Q000W##;vACYnZ0W,.i;I1b@#$QQEZ96ZZzAIY;i;;.Y@MM@WSccS2IEt    "
#                        IM#Q88EEQ#MbnZzX1200.ii777@M@60EbQQ06CYY:i;;;;MMMMMMM#tv71A0,    "
#                     :;X#@WEbEEE0W@M@1UI1IbU.c72.itQ@b00BQA11ttX..7tcEMM@@@@Bz.;77ob     "
#                  .v1;:Q@QEZEEE0Q$@MM$ YA90oiXo; ..vQ#EbEQ$#@@#@QU717zMM@@@#W; ctz0I     "
#                ,X1i  EMWbEEEEEE0#@@#M9 XbWC;CA  ..,YEb9ZI2IA8W#@#AUovn$@@#En.intvi      "
#              :tC,  .BMWbEEEEEbEW@$8IbMA.IQ:Xbi ....:Z9znCXc;c7z987SAzc;;i,:;Y7c1        "
#            ,t7.   CM@b29EEEEEEE@#U17c1#zCA,$:   ....AZtCoo77ttY7t vE6zCci:Yt7cYn        "
#           .Xt.    0MQCCZ0EEEbE8b@UCYv::Y02YYv     ...9@W1SEnt1tYcv.z8AA2U;7otCt1c       " 
#         ;n:    .#MS,:z00EEEb0U#BX7ci,..:,.       ...EMEo0AXC1tYcvYzU66ISiSoX7Xo.        "
#        .CY     :@@7.iUE0E8Eb8QZMz7Yci.            . .Q@A0@Uno7XXCYcSIzt1YiC7XC7n        " 
#       .Si     ;@@c cbQQ0EZ08E0WBXYvi,.            . i@B6i;WMMEYcXYY9Uot1YYtcv7Cc        "
#     ,n:     v@B: YQWQ0EE8QbW0#bXvi,.             . QMX. .20#M@2CY;nzI1oC7tXccC,         "
#    .ti     SM0  1$BQ0bEEZQ0$b$AX;:,.            .. 8MttEWQ0E0#M@t.cY7Y1X1tCtCo          "
#    7Y    .0MW  6#W0EbbE0A0WB0WzY;:..               0M09ZE00EEEQ@@00Z2otYzoSUb1          "
#   :Y;   :@M$i:E$QEZ98EEEUB@$$WztYi.            .i;,2M@QEEEEEEEEEW#MM0t0#:  .i.          "
#   cvc  :#@W7cQBQb9AA8EEE2$@$$QI17;,.       .,;77Yi, #M@$0EEbbbEE00W@B@MI                "
#   cvc:iW#WCYbW0b6AAAZEEbt#@B$0InXci.   .,;YCXYv;ii,.iW@MMM$WQQW#@MMMB;.                 "
#   ;cit00$2t600bZAA68bEE9tMM@@B2c;ii:iv7XX7c;;iiiii::.   :9MMMMMMW7.                     "
#    cc0A$8SIb0EbZA6bEEEE8nMM0ACi,,i;cYcv;;iiiiiii;;i.        ,.                          "
#     #AQ0Uz6bb96A68E000Q8U$i   .:iiiiiiiiiiii;v;i.     .  ,.                             "
#    i#8QZIU6AIzSz6EQQWW$z8Qi..::iiiiiiii;;v;i,.                                          "
#    QEWEZA6AUzS1z80QW$@Bt@MEYii;;;;;vv;i:.                                               "
#   ;#008Z9666U2I80WBW$@EtnA2c::,..,..                                                    "
#  .M00bbEbZ9Z9Zb0QB$BBW8:                                                                "
#  @ME0EEEEb9ZbE0QWBWWWb1                                                                 "
#  MWEEEEEEbZ80QQWBBWW#0:                                                                 "
# .MEbbEEEEEEE0QW$$$B#$2                                                                  "
#  MQZ8EEEbbE000WB##$@b.                                                                  "
#  MMEZEEb8b0QQ0QW$B$BS                                                                   "
#  .M#EbEEEE0QQQQQWQWb;                                                                   "
#   9MQbbEE0000QQQQ00n.                                                                   "
#    MMWb8bEEE00QQQB07                                                                    "
#     MMWbZbEE0QWQ0B0o.                                                                   "
#      MM#EbbbE0Q000bA;                                                                   "
#       6MMBE8bbEEEE661                                                                   "
#        ;MMM@0bbE00b9b                                                                   "
#           cQ@M@Q668$W                                                                   "
#               c8W0AS.                                                                   "                            
				sleep 1
				clear
				echo "La Princesse vous est redevable ... "
				sleep 2
				$DIALOG --title "Nuit Magique avec la Princesse" --clear \
				--yes-label "Oui" --no-label "Oui" --yesno "Voulez vous ****er avec la Princesse ?" 10 30
	
				case $1 in
				*)
				echo "Vous reprenez de la vie grace à la princesse !!"
				sleep 1
				echo "....."
				sleep 1
				echo "...."
				sleep 1
				echo "..."
				sleep 1
				echo ".."
				sleep 1
				echo "."
				sleep 1
				pv=$pvmax
				pm=$pmmax
				echo "Vous avez récupéré vos vies !! "
				sleep 2
				echo "Il est maintenant temps de reprendre votre quête !"
				sleep 2
				princesse_save=1
				;;
				esac
		menu
}
#########################################################
#			function niveau			#
#########################################################
function niveau(){
	#on reinitialise la variable qui permet de passer au niveau supérieur ( 1 si la princesse est sauvée , 0 si non )
	princesse_save=0
		case $niveau in
		1)
			#On change de niveau
			niveau=2
			#On aggrandie la map
			ymax=20
			xmax=20
			if [ $perso -eq 0 ]; then 
				#On rajoute des PV et des PM ainsi que la force de magie et d'épée en fonction du mage
				pvmax=150
				pmmax=150
				pm=150
				pv=150
				degat_magie=4
				degat_epee=2
			else
				#On rajoute des PV et des PM ainsi que la force de magie et d'épée en fonction du guerrier
				pvmax=250
				pmmax=40
				pm=40
				pv=250
				degat_magie=2
				degat_epee=3
			fi
			coef_monstre=20
			vmin=20
			coef_pv_lost=20
		;;
		2)
			niveau=3
			ymax=25
			xmax=25
			if [ $perso -eq 0 ]; then 
				pvmax=200
				pmmax=200
				pm=200
				pv=200
				degat_magie=5
				degat_epee=3
			else
				pvmax=300
				pmmax=45
				pm=45
				pv=300
				degat_magie=3
				degat_epee=4
			fi
			coef_monstre=30
			vmin=30
			coef_pv_lost=30
		;;
		3)
			niveau=4
			ymax=30
			xmax=30
			if [ $perso -eq 0 ]; then 
				pvmax=250
				pmmax=250
				pm=250
				pv=250
				degat_magie=6
				degat_epee=3
			else
				pvmax=350
				pmmax=50
				pm=50
				pv=350
				degat_magie=3
				degat_epee=5
			fi
			coef_monstre=40
			vmin=40
			coef_pv_lost=40
		;;
		4)
			niveau=5
			ymax=35
			xmax=35
			if [ $perso -eq 0 ]; then 
				pvmax=300
				pmmax=300
				pm=300
				pv=300
				degat_magie=7
				degat_epee=4
			else
				pvmax=400
				pmmax=55
				pm=55
				pv=400
				degat_magie=4
				degat_epee=6
			fi
		coef_monstre=50
			vmin=50
		coef_pv_lost=50
		;;
			
		5)
			niveau=6
			ymax=40
			xmax=40
			if [ $perso -eq 0 ]; then 
				pvmax=350
				pmmax=350
				pm=350
				pv=350
				degat_magie=8
				degat_epee=6
			else
				pvmax=450
				pmmax=60
				pm=60
				pv=450
				degat_magie=5
				degat_epee=7
			fi
			coef_monstre=60
			vmin=60
			coef_pv_lost=60
		;;
		6)
			niveau=6
			ymax=40
			xmax=40
			if [ $perso -eq 0 ]; then 
				pvmax=400
				pmmax=400
				pm=400
				pv=400
				degat_magie=9
				degat_epee=7
			else
				pvmax=500
				pmmax=70
				pm=70
				pv=500
				degat_magie=6
				degat_epee=9
			fi
			coef_monstre=70
			vmin=70
			coef_pv_lost=70
		;;
		esac
		#On affiche tous les nouveaux pouvoirs et points 
		px=$xmax
		x=1
		y=1
		echo "Nouveau PV : $pvmax"
		sleep 1
		echo "Nouveau PM : $pmmax"
		sleep 1
		echo "Niveau Magie : $degat_magie"
		sleep 1
		echo "Niveau Epée : $degat_epee"
		sleep 1
		map
}
#########################################################
#			function map			#
#########################################################
function map(){
# Affichage de la map avec deux boucles for . La premiere affiche les lignes, l'autre force un retour a la ligne 
# les conditions permettent d'afficher un Sygle dans le carré: M X P etc ..
for ((a=$ymax; a >= 1; a--)) 
do
	for ((b=1 ; b <= ymax; b++)) 
	do
	   echo -n "|"
	   if [ "$b" = "$x" ] && [ "$a" = "$y" ] ;then
		echo -n "X"	
	   elif [ "$b" = "$px" ] && [ "$a" = "$py" ] ;then
		echo -n "P"
	   elif [ "$b" = "$xm1" ] && [ "$a" = "$ym1" ] ;then
		echo -n "M"
	   elif [ "$b" = "$xm2" ] && [ "$a" = "$ym2" ] ;then
		echo -n "M"
	   elif [ "$b" = "$xm3" ] && [ "$a" = "$ym3" ] ;then
		echo -n "M"
	   elif [ "$b" = "$xm4" ] && [ "$a" = "$ym4" ] ;then
		echo -n "M"
	   elif [ "$b" = "$xmax" ] && [ "$a" = "$ymax" ] ;then
		echo -n "S"
	   else
		echo -n " "
	   fi 
	done
	   
	echo "|"
done
echo "M = Magasin"
echo "P = Princesse"
echo "X = Votre Position"
echo "S = Sortie"
sleep 2
main
}
#########################################################
#		 function choixDuNom		   	#
#########################################################
function choixDuNom(){
	fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
	trap "rm -f $fichtemp" 0 1 2 5 15
	$DIALOG --clear --title "Bonjour et Bienvenue dans SupBlivion" \
	--inputbox "Bonjour, comment vous appellez vous ?:" 10 45  2> $fichtemp
	nom=`cat $fichtemp`
	nom_heros=$nom
}
#########################################################
#		 function choixMageOuGuerrier	   	#
#########################################################
function choixMageOuGuerrier(){
fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15
$DIALOG --clear --title "Bonjour et Bienvenue dans SupBlivion" \
	--menu "Bonjour $nom_heros ! J'aimerai en savoir un peu plus sur vous .. \n Vous êtes un Mage ou un Guerrier ? \n Je sais qu'en principe les Mages ont plus de points de Magie et moins de Vie alors que les Guerrier ont plus de Vie et moins de magie ! \n\n Que préférez vous ?:" 20 51 4 \
	 "M" "Mage" \
	 "G" "Guerrier" 2> $fichtemp
choix=`cat $fichtemp`

# Lorsque le joueur fait son choix, on attribu des valeurs différentes au variable de vie de magie et de puissance .
case $choix in
	M)
	pvmax=99
	pmmax=99
	pm=99
	pv=99
	degat_magie=2
	degat_epee=1
	perso=0
	n_perso=mage
	;;
	G)
	pvmax=199
	pmmax=20
	pm=20
	pv=200
	degat_magie=1
	degat_epee=2
	perso=1
	n_perso=guerrier
	;;
esac
}
#########################################################
#		 function sacDeBase	   		#
#########################################################
function sacDeBase(){
	$DIALOG --clear --title "Bonjour et Bienvenue dans SupBlivion" \
	--msgbox "Ainsi vous êtes un $n_perso ! \n C'est formidable ! \n J'ai justement besoin de vous .. \n\n Une légende dit que le donjon de Ragnar Grimsson renferme un trésor .. \n J'ai entendu dire que vous cherchiez la gloire, et bien fils , c'est une facon de prouver ce dont vous êtes capable ... \n\n Je vous propose de vous aider en vous donnant ces quelques objets qui pourront sans aucun doute vous êtes utiles  ! \n\n Je vous remet aussi cette petite bourse qui vous permettra d'acheter des objets dans le chateau ... \n\n A bientôt et .. bonne chance" 20 70 
	$DIALOG --clear --title "Objet Recu !" \
	--msgbox "Vous avez Recu : Un Sac A Dos !" 5 40
	$DIALOG --clear --title "Objet Recu !" \
	--msgbox "Vous avez Recu : 100 Pièces d'or  !" 5 40
 map
}
#########################################################
#		      function sacADos		        #
#########################################################
function sacADos(){
# Dans le sac a dos, on test en fonction des choix du joueur s'il peut ou non utiliser ses potions 
	case $1 in
	M)
		if [ $objet_recup_magie_5 -eq 0 ]; then
			echo "Vous n'avez plus de potion de magie 5 Pm .."
			sleep 2
		else
			let "objet_recup_magie_5 -= 1"
			let "pm += 5"
			echo "Vous avez récupéré 5 PM !"
			echo "Vous avez maintenant $pm PM "
			sleep 2
		fi
		main
	;;
	P)
		if [ $objet_recup_magie_10 -eq 0 ]; then
			echo "Vous n'avez plus de potion de magie 10 Pm .."
			sleep 2
		else
			let "objet_recup_pv_10 -= 1"
			let "pm += 10"
			echo "Vous avez récupéré 10 Pm !"
			echo "Vous avez maintenant $pm Pm "
			sleep 2
		fi
		main
	;;

	O)
		if [ $objet_recup_pv_15 -eq 0 ]; then
			echo "Vous n'avez plus de potion de vie 15 PV .."
			sleep 2
		else
			let "objet_recup_pv_15 -= 1"
			let "pv+= 15"
			echo "Vous avez récupéré 15 PV !"
			echo "Vous avez maintenant $pv PM "
			sleep 2
		fi
		main
	;;
	L)
		if [ $objet_recup_pv_30 -eq 0 ]; then
			echo "Vous n'avez plus de potion de vie 30 Pv .."
			sleep 2
		else
			let "objet_recup_pv_30 -= 1"
			let "pv += 30"
			echo "Vous avez récupéré 30 PV !"
			echo "Vous avez maintenant $pv PV "
			sleep 2
		fi
		main
	;;
	*)
		map
	;;
	esac
}
function appelSac(){
sacfichetemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15
$DIALOG --clear --title "Voici Votre Sac à Dos" \
	--menu "Vous avez $cash_money pièces dans vote sac \n Choisissez un objet:" 20 51 4 \
	 "M" "Potion Magie 5 Pm : $objet_recup_magie_5" \
	 "P" "Potion Magie 10 Pm: $objet_recup_magie_10" \
	 "O" "Potion Vie 15 Pv: $objet_recup_pv_15" \
	 "L" "Potion Vie 30 Pv: $objet_recup_pv_30"  2> $sacfichetemp
menusac=`cat $sacfichetemp`
sacADos $menusac
}
#########################################################
#		      function Braquage		        #
#########################################################
function Braquage(){
	$DIALOG --title " Braquage" --clear \
	--yesno "Voulez vous Braquer le Monstre que vous venez de tuer ?" 10 30

case $? in
	0)
	#On calcule un nombre aléatoire compris entre 0 et 10
	braque=$RANDOM
	let "braque %= 10"
	#Et on agit en fonction du nombre trouvé
	if [ $braque -eq 1  ] ; then
		let "objet_recup_magie_5 += 1"
		echo "Vous avez braqué une potion magique PM +5!"
		sleep 2
	elif [ $braque -eq 2 ]; then
		let "objet_recup_pv_15 += 1"
		echo "Vous avez braqué une potion de vie PV +15!"
		sleep 2
	elif [ $braque -eq 3 ] || [ $braque -eq 4 ] || [ $braque -eq 5 ] || [ $braque -eq 6 ]; then
		cashrand=$RANDOM
		let "cashrand %= 30"
		let "cashrand += 1"
		let "cash_money += cashrand"
		echo "Vous avez braqué $cashrand pièces ! Ca fait du cash !" 
		sleep 2
	else
		echo "Il n'y avait rien à braquer sur ce Monstre ..."
		sleep 2
	fi
	map
	;;
	1)
	map
	;;
esac

}
#########################################################
#		    function action			#
#########################################################
function action(){
	case $1 in
		X)
			appelSac
		;;
		Z)
		if [ "$y" = "$ymax" ]; then
			echo "vous etes contre le mur du haut !"
			sleep 1
			map
		else 	
			y=$(($y+1))
			probFight
			sleep 1
		fi
		;;
		Q)
			if [ "$x" = "$xmin" ]; then
			echo "vous etes contre le mur de gauche !"
			sleep 1
			map
		else
			x=$(($x-1))
			probFight
			sleep 1
		fi
		;;
		D)
		if [ "$x" = "$xmax" ]; then
			echo "vous etes contre le mur de droite !"
			sleep 1
			map
		else
			x=$(($x+1))
			probFight
			sleep 1
		fi
		;;
		S)
		if [ "$y" -eq "$ymin" ]; then
			echo "vous etes contre le mur du bas !"
			sleep 1
			map
		else
			y=$(($y-1))
			probFight
			sleep 1
		fi
		;;
		M)
			stop=1
			echo "arret dans 3 secondes"
			sleep 1
			echo 2
			sleep 1 
			echo 1
			sleep 1
			echo "A bientot ! !!"
		;;
		*)
		map
		;;
	esac
}

#########################################################
#		function Fight				#
#########################################################
function Fight(){
	fichfight=`tempfile 2>/dev/null` || fichfight=/tmp/test$$
	trap "rm -f fichfight" 0 1 2 5 15
	$DIALOG --clear --title "Vous êtes dans la bataille " \
		--menu "Choisissez une action :" 20 51 4 \
		 "E" "Donner un coup d'épée" \
		 "Z" "Lancer un pouvoir magique"\
		 "F" "Fuir le combat comme un lache " 2> $fichfight
	fichfight=`cat $fichfight`
	fuiraction=0
	#On choisi un nombre aléatoire qui va correspondre au nombre de points de vie en moins du monstre
	pv_monstre_moins=$RANDOM
	case $fichfight in 
	E)
		#On définit le nombre de points qu'on enleve au monstre
		let "pv_monstre_moins %= 10"
		let "pv_monstre_moins *= degat_epee"
		let "pvmonstre -= pv_monstre_moins"
		if [ $pvmonstre -gt 0 ]; then
			if [ $pv_monstre_moins = 0 ]; then
				echo "Le monstre à esquivé votre coup d'épée !"
				sleep 2
			else
				echo "Vous avez enlevé $pv_monstre_moins au monstre !"
				echo "Il lui reste $pvmonstre PV  !!"
				sleep 2
			fi		
		else
			echo "Félicitations vous avez tué le Monstre  !"
			fuiraction=3
			sleep 2
			echo
			vieperdue=$RANDOM
			let "vieperdue %= coef_pv_lost"
			let "pv -= vieperdue"
			echo "Ce combat vous a fait perdre $vieperdue PV,  il ne vous reste plus que $pv PV!"
			sleep 3
		fi
		;;
	Z)
		let "pm -= 2"
		let "pv_monstre_moins %= 17"
		let "pv_monstre_moins *= degat_magie"
		let "pvmonstre -= pv_monstre_moins"

		if [ $pvmonstre -gt 0 ]; then
			if [ $pv_monstre_moins = 0 ]; then
				echo "Le monstre à esquivé votre ataque magique !"
				sleep 2
			else
				echo "Vous avez enlevé $pv_monstre_moins au monstre !"
				echo "Il lui reste $pvmonstre PV  !!"
				sleep 2
			fi		
		else
			echo "Félicitations vous avez tué le Monstre  !"
			fuiraction=3
			sleep 2
			echo
			vieperdue=$RANDOM
			let "vieperdue %= coef_pv_lost"
			let "pv -= vieperdue"
			echo "Ce combat vous a fait perdre $vieperdue PV,  il ne vous reste plus que $pv PV!"
			sleep 3
		fi
	;;
	F)
	fuir=$RANDOM
	fuiraction=1
	let "fuir %= 30"
	let "fuir += 20"
	
	if [ $cash_money -lt $fuir ]; then
		echo "Vous ne pouvez pas fuir"
		sleep 2
	else 
		let "cash_money -= fuir"
		echo "Vous avez fuit le combat comme un lache ! Ceci vous a couté $fuir pièces !!"
		fuiraction=2
		sleep 2
	fi

	;;
	esac
	if [ $pvmonstre -gt 0 ] && [ $fuiraction -eq 0 ]; then
		Fight
	elif [ $fuiraction -eq 1 ]; then
		Fight
	elif [ $fuiraction -eq 2 ]; then
		map
	elif [ $fuiraction -eq 3 ]; then
		Braquage
	fi 
}
#########################################################
#		function probFight			#
#########################################################

function probFight(){
#On calcule un nombre aléatoire qui permet de choisir le nombre de points de vie du monstre 
nombre=$RANDOM
pvmonstre=$RANDOM
let "nombre %= 49"
let "nombre += 1"
if [ "$nombre" -gt 25 ]; then
	let "pvmonstre %= coef_monstre"
	let "pvmonstre += vmin"
	echo "Préparez vous a combattre !!"
	sleep 1
	echo "Le combat s'engage ! Votre Ennemi a $pvmonstre PV !"
	sleep 2
	Fight
	sleep 1
else
	echo "Rejouez !"
	sleep 1
fi
clear
echo
echo
echo
echo
echo
map
sleep 1
}
#########################################################
#		function faisTonShopping()		#
#########################################################
function faisTonShopping(){
fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15
	$DIALOG --clear --title "Bienvenue dans le Magasin !" \
		--menu "Vous avez : \n $pv/$pvmax PV .\n $pm/$pmmax PM \n $cash_money pièces\n Que voulez vous ? :" 20 51 4 \
		 "D" "Dormir une Nuit : 70 Pièces" \
		 "M" "Remplir ma magie : 40 Pièces" \
		 "V" "Remplir ma vie : 40 Pièces" \
		 "R" "Acheter une Potion de 15 PV : 10 Pièces" \
		 "T" "Acheter une potion de  30 PV : 15 Pièces" \
		 "Y" "Acheter une potion de 5 PM : 10 Pièces" \
		 "U" "Acheter une potion de 10 PM : 15 Pièces " \
		 "Q" "Quitter le Magasin"  2> $fichtemp
choix=`cat $fichtemp`
	case $choix in
		D)
		#On définit le prix des objets a chaque fois 
		price=70
		temp=$cash_money
		# On soustrait le prix a la somme d'argent du joueur
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			pv=$pvmax
			pm=$pmmax
			echo "Restitution en cours"
			sleep 1
			echo "....."
			sleep 1
			echo "...."
			sleep 1
			echo "..."
			sleep 1
			echo ".."
			sleep 1
			echo "."
			sleep 1
			echo "Pv et Pm Restaurés à fond !"
			echo "Pv : $pv / Pm : $pm"
			sleep 2
			faisTonShopping
		fi		
		;;
		M)
		price=40
		temp=$cash_money
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			pm=$pmmax
			echo "Restitution en cours"
			sleep 1
			echo "....."
			sleep 1
			echo "...."
			sleep 1
			echo "..."
			sleep 1
			echo ".."
			sleep 1
			echo "."
			sleep 1
			echo "Pvm Restaurés à fond !"
			echo "Pm : $pm"
			sleep 2
			faisTonShopping
		fi
		;;
		V)
		price=40
		temp=$cash_money
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			pv=$pvmax
			echo "Restitution en cours"
			sleep 1
			echo "....."
			sleep 1
			echo "...."
			sleep 1
			echo "..."
			sleep 1
			echo ".."
			sleep 1
			echo "."
			sleep 1
			echo "Pv Restaurés à fond !"
			echo "Pv : $pv"
			sleep 2
			faisTonShopping
		fi
		;;
		R)
		price=10
		temp=$cash_money
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			let "objet_recup_pv_15 += 1"
			echo "Une potion Pv+15 achetée !"
			sleep 2
			
			faisTonShopping
		fi
		;;
		T)
		price=15
		temp=cashmoney
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			let "objet_recup_pv_30 += 1"
			echo "Une potion Pv+30 achetée !"
			sleep 2
			
			faisTonShopping
		fi
		;;
		Y)
		price=10
		temp=$cash_money
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			let "objet_recup_magie_5 += 1"
			echo "Une potion Pm+5 achetée !"

			sleep 2
			
			faisTonShopping
		fi
		;;
		U)
		price=15
		temp=$cash_money
		let "temp -= price"
		if [ $temp -lt 0 ]; then
			echo "Vous n'avez pas assez d'argent"
			sleep 2
			faisTonShopping
		else
			let "cash_money -= price"
			let "objet_recup_magie_10 += 1"
			echo "Une potion Pm+10 achetée !"
			sleep 2
			
			faisTonShopping
		fi
		;;
		Q)
		menu
		;;
	esac
			
}

#########################################################
#			function Main			#
#########################################################
function main(){
# Ici on va tester a chaque passage un nombre de conditions comme la mort du joueur, l'emplacement du joueur ( Princesse Magasin etc ..  ) 
# Et finalement si aucune des conditions spéciales n'est attribuée, on affiche le menu !
if [ $pv -lt 0 ]; then 
	echo "Vous avez perdu,vous n'avez plus assez de point de vie pour continuer la partie"
	sleep 4
elif [ $niveau -eq 6 ] && [ $x -eq $xmax ] && [ $y -eq $ymax ] && [ $princesse_save -eq 1 ] ; then
	tresor
elif [ $x -eq $xmax ] && [ $y -eq $ymax ]; then
	clear
	if [ $princesse_save -eq 0 ]; then
		echo "Vous ne pouvez pas quitter ce niveau !"
		sleep 2
		echo "Il faut d'abord sauver la princesse !!!"
		sleep 2
		menu
	else
		echo "Félicitations !!! "
		sleep 1
		echo "Vous êtes arrivé au bout du niveau $niveau"
		sleep 1
		niveau
	fi
elif
     [ $x -eq $px ] && [ $y -eq $py ]; then
	princesse
elif [ $x -eq $xm1 ] && [ $y -eq $ym1 ]; then
	faisTonShopping
	sleep 2
	menu
elif [ $x -eq $xm2 ] && [ $y -eq $ym2 ]; then
	faisTonShopping
	sleep 2
	menu
elif [ $x -eq $xm3 ] && [ $y -eq $ym3 ]; then
	faisTonShopping
	sleep 2objet_recup_pv_15=1
objet_recup_pv_30=1
objet_recup_magie_5=1
objet_recup_magie_10=1
	menu
elif [ $x -eq $xm4 ] && [ $y -eq $ym4 ]; then
	faisTonShopping
	sleep 2
	menu
elif [ $stop -eq 1 ]; then
	echo "Bye !"
else
	menu
fi
}
#########################################################
#			function Menu			#
#########################################################
function menu(){
fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15
$DIALOG --clear --title "Menu" \
	--cancel-label "Carte" --menu "Vous avez : \n $pv/$pvmax PV .\n $pm/$pmmax PM \n $cash_money pièces" 20 51 4 \
	 "X" "Sac A Dos" \
	 "Z" "Aller en haut" \
	 "Q" "Aller a Gauche" \
	 "D" "Aller a Droite" \
	 "S" "Aller en Bas " \
	 "M" "Quitter le Jeu" 2> $fichtemp
choix=`cat $fichtemp`
action $choix
}
choixDuNom
choixMageOuGuerrier
sacDeBase
