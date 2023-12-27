# ReconnaissanceLocuteur
## Introduction
Ce mini-projet se penche sur l'application de divers outils et techniques d'apprentissage automatique à la tâche complexe de la reconnaissance de caractéristiques vocales.

Notre objectif est de créer un système de reconnaissance vocale capable d'identifier des informations essentielles sur des locuteurs à partir d'enregistrements audio. Plus précisément, nous cherchons à reconnaître ...............

Pour atteindre cet objectif, nous travaillerons avec un ensemble de données provenant du projet open-source Common Voice de Mozilla, qui comprend des fichiers audio représentant une diversité de locuteurs et de contextes linguistiques. Notre travail impliquera la manipulation de données audio, l'extraction de caractéristiques pertinentes, la modélisation statistique et la mise en œuvre d'un système de reconnaissance.


Le projet est structuré en plusieurs phases, y compris l'apprentissage, le développement, la mise au point des paramètres et l'évaluation finale. Nous effectuerons des tests sur des corpus indépendants pour mesurer la précision de notre système. Si nécessaire, nous utiliserons une validation croisée pour augmenter la robustesse de nos résultats.

Dans l'ensemble, ce mini-projet offre une opportunité passionnante d'appliquer des concepts théoriques à des problèmes du monde réel dans le domaine de la reconnaissance vocale. Nous espérons que notre travail contribuera à la compréhension et à l'amélioration des systèmes de reconnaissance vocale pour des applications diverses et variées.

## Commandes

les commandes consecutives à lancer sont : 


### hcopy
./HCopy -T 1 -C /home/rawi/ReconnaissanceLocuteur/ttData/config -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/codetr.scp

### hcomp

./HCompV -C /home/rawi/ReconnaissanceLocuteur/ttData/config -f 0.01 -m -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/train.scp -M /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/hmm0 /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/proto


### Hrest

 ./HERest -C /home/rawi/ReconnaissanceLocuteur/ttData/config -I /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/phones0.mlf -t 250.0 150.0 1000.0 -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/train.scp -H /home/rawi/ReconnaissanceLocuteur/ttData/hmm1/macros -H /home/rawi/ReconnaissanceLocuteur/ttData/hmm1/hmmdefs -M /home/rawi/ReconnaissanceLocuteur/ttData/hmm2 /home/rawi/ReconnaissanceLocuteur/ttData/monophones0


### hparse

 ./HParse /home/rawi/ReconnaissanceLocuteur/ttData/grammar.txt /home/rawi/ReconnaissanceLocuteur/ttData/grammar.net


### hvite

./HVite -C /home/rawi/ReconnaissanceLocuteur/ttData/config -H /home/rawi/ReconnaissanceLocuteur/ttData/hmm1/hmmdefs -w /home/rawi/ReconnaissanceLocuteur/ttData/grammar.net -i /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf /home/rawi/ReconnaissanceLocuteur/ttData/lex.dic /home/rawi/ReconnaissanceLocuteur/ttData/hmmL.txt -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/train.scp

### partie de test
  308  ./HVite -C /home/rawi/ReconnaissanceLocuteur/ttData/config -H /home/rawi/ReconnaissanceLocuteur/ttData/hmm1/hmmdefs -w /home/rawi/ReconnaissanceLocuteur/ttData/grammar.net -i /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf /home/rawi/ReconnaissanceLocuteur/ttData/lex.dic /home/rawi/ReconnaissanceLocuteur/ttData/hmmL.txt -S /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/test.scp
  309  ./HResults -I /home/rawi/ReconnaissanceLocuteur/script/fich_sortie/phones0_test.mlf /home/rawi/ReconnaissanceLocuteur/ttData/monophones0 /home/rawi/ReconnaissanceLocuteur/ttData/sortie_vite.mlf
##Resultats 


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

sachant qu'il faut adapter dans les scripts les endroits des dossiers
