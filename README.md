# ReconnaissanceLocuteur
## Introduction
Ce mini-projet se penche sur l'application de divers outils et techniques d'apprentissage automatique à la tâche complexe de la reconnaissance de caractéristiques vocales.

Notre objectif est de créer un système de reconnaissance vocale capable d'identifier des informations essentielles sur des locuteurs à partir d'enregistrements audio. Plus précisément, nous cherchons à reconnaître le sexe du locuteur.

Pour atteindre cet objectif, nous travaillerons avec un ensemble de données provenant du projet open-source Common Voice de Mozilla, qui comprend des fichiers audio représentant une diversité de locuteurs et de contextes linguistiques. Notre travail impliquera la manipulation de données audio, l'extraction de caractéristiques pertinentes, la modélisation statistique et la mise en œuvre d'un système de reconnaissance.


Le projet est structuré en plusieurs phases, y compris l'apprentissage, le développement, la mise au point des paramètres et l'évaluation finale. Nous effectuerons des tests sur des corpus indépendants pour mesurer la précision de notre système. Si nécessaire, nous utiliserons une validation croisée pour augmenter la robustesse de nos résultats.

Dans l'ensemble, ce mini-projet offre une opportunité passionnante d'appliquer des concepts théoriques à des problèmes du monde réel dans le domaine de la reconnaissance vocale. Nous espérons que notre travail contribuera à la compréhension et à l'amélioration des systèmes de reconnaissance vocale pour des applications diverses et variées.

## HMM et GMM
dans HTK, chaque etat caché d'un modéle HMM peut etre associé à un modéle de mélange gaussien.
Ainsi un model HMM peut etre composé d'une séquence d'etats cachés et chacun de ces états peut émettre des observations acoustiques basées sur un modéle GMM.
## Commandes

les commandes consecutives à lancer seront : 


### HCopy
cette commande est utilisé pour generer les fichiers MFC (qui representent les caracteristiques spectrales d'un signal audio) à partir des fichiers audios bruts en utilisant les parametres de configurations di fochier config.
./HCopy -T 1 -C /home/rawi/ReconnaissanceLocuteur/ttData/config -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/codetr.scp

### HCompV

hcompv initialise les models acoustiques en calculant la moyenne et la variance globales sur un ensemble de données. Les modéles resultants seront stockés dans le repertoire hmm0.

./HCompV -C /home/rawi/ReconnaissanceLocuteur/ttData/config -f 0.01 -m -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/train.scp -M /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/hmm0 /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/proto


### HERest
effectue le processus d'estimation des modèles HMM en utilisant les données d'entraînement fournies. Elle réestime les paramètres des modèles acoustiques, tels que les moyennes et les variances, pour mieux correspondre aux caractéristiques des données d'entraînement. Les itérations continueront jusqu'à ce que les critères de convergence spécifiés soient atteints.


 ./HERest -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config -I /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0_train.mlf -t 350.0 250.0 1200.0 -S /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/train.scp -H /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm0/macros -H /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm0/hmmdefs -M /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm1 /home/rawi/ReconnaissanceLocuteur/rawi/ttData/monophones0


 ./HERest -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config -I /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0_train.mlf -t 350.0 250.0 1200.0 -S /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/train.scp -H /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm1/macros -H /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm1/hmmdefs -M /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/hmm2 /home/rawi/ReconnaissanceLocuteur/rawi/ttData/monophones0
 

### HVite

./HVite -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config -H /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmm2/hmmdefs -w /home/rawi/ReconnaissanceLocuteur/rawi/ttData/grammar.net -i /home/rawi/ReconnaissanceLocuteur/rawi/ttData/sortie_vite_train.mlf /home/rawi/ReconnaissanceLocuteur/rawi/ttData/lex.dic /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmmL.txt -S /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/train.scp

### partie de test
  308  ./HVite -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config -H /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmm2/hmmdefs -w /home/rawi/ReconnaissanceLocuteur/rawi/ttData/grammar.net -i /home/rawi/ReconnaissanceLocuteur/rawi/ttData/sortie_vite_test.mlf /home/rawi/ReconnaissanceLocuteur/rawi/ttData/lex.dic /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmmL.txt -S /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/test.scp
  309  ./HResults -I /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0_test.mlf /home/rawi/ReconnaissanceLocuteur/rawi/ttData/monophones0 /home/rawi/ReconnaissanceLocuteur/rawi/ttData/sortie_vite_test.mlf
##Resultats 
 ### amelioration
 ./HHEd -T 1 -H /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmm1/hmmdefs -H /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmm1/macros -M /home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config /home/rawi/ReconnaissanceLocuteur/rawi/ttData/script_cmds /home/rawi/ReconnaissanceLocuteur/rawi/ttData/models.lst

====================== HTK Results Analysis =======================
  Date: Mon Dec 25 13:32:16 2023
  Ref : /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/phones0_test.mlf
  Rec : /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf
------------------------ Overall Results --------------------------
SENT: %Correct=10.14 [H=497, S=4406, N=4903]
WORD: %Corr=10.14, Acc=10.14 [H=497, D=0, S=4406, I=0, N=4903]
===================================================================

rawi@rawia:~/I322/HTK/HTKTools$ ./HResults -I /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/phones0_test.mlf /home/rawi/ReconnaissanceLocuteur/ttData/monophones0 /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf
====================== HTK Results Analysis =======================
  Date: Mon Dec 25 16:08:32 2023
  Ref : /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/phones0_test.mlf
  Rec : /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf
------------------------ Overall Results --------------------------
SENT: %Correct=11.36 [H=557, S=4346, N=4903]
WORD: %Corr=11.36, Acc=11.36 [H=557, D=0, S=4346, I=0, N=4903]
===================================================================


 ./HVite -C /home/rawi/ReconnaissanceLocuteur/rawi/ttData/config -H /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/hmm2/hmmdefs -w /home/rawi/ReconnaissanceLocuteur/rawi/ttData/grammar.net -i /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/sortie_vite_test.mlf /home/rawi/ReconnaissanceLocuteur/rawi/ttData/lex.dic /home/rawi/ReconnaissanceLocuteur/rawi/ttData/hmmL.txt -S /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/test.scp && ./HResults -I /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0_test.mlf /home/rawi/ReconnaissanceLocuteur/rawi/ttData/monophones0 /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/sortie_vite_test.mlf
====================== HTK Results Analysis =======================
  Date: Sat Dec 30 19:28:37 2023
  Ref : /home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0_test.mlf
  Rec : >e/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/sortie_vite_test.mlf
------------------------ Overall Results --------------------------
SENT: %Correct=5.91 [H=1785, S=28412, N=30197]
WORD: %Corr=5.91, Acc=5.91 [H=1785, D=0, S=28412, I=0, N=30197]
===================================================================

sachant qu'il faut adapter dans les scripts les endroits des dossiers


