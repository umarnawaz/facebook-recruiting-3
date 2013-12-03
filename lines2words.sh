zcat train_title.dat.gz|python lines2words.py |gzip >train_title_words.tsv.gz
zcat train_body.dat.gz|python lines2words.py |gzip >train_body_words.tsv.gz
zcat test_title.dat.gz|python lines2words.py |gzip >test_title_words.tsv.gz
zcat test_body.dat.gz|python lines2words.py |gzip >test_body_words.tsv.gz
