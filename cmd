./HCompV -C ~/HTK_PROJECT/traitement/config -f 0.01 -m -S ~/HTK_PROJECT/traitement/trainset.scp -M ~/HTK_PROJECT/models/hmm0 ~/HTK_PROJECT/traitement/proto

./HVite -C ~/HTK_PROJECT/traitement/config -H ~/HTK_PROJECT/models/hmm10/hmmdefs -w ~/HTK_PROJECT/traitement/grammar.net -i ~/HTK_PROJECT/traitement/resHVITE ~/HTK_PROJECT/traitement/lex.dic ~/HTK_PROJECT/traitement/monophones0 -S ~/HTK_PROJECT/traitement/testset.scp
 
 ./HResults -I ~/HTK_PROJECT/traitement/phones0_all.mlf ~/HTK_PROJECT/traitement/monophones0 ~/HTK_PROJECT/traitement/resHVITE
 
./HHEd -T 1 -H ~/HTK_PROJECT/models/hmm1/hmmdefs -H ~/HTK_PROJECT/models/hmm1/macros -M ~/HTK_PROJECT/models/hmm2 -C ~/HTK_PROJECT/traitement/config ~/HTK_PROJECT/traitement/inc_gauss.hed ~/HTK_PROJECT/traitement/monophones0


