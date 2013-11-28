zcat train_body.dat.gz|tr [:upper:] [:lower:]|tr ' ' '\n'|sort -T /otherdisk2/data/tmpsorting/|uniq -c|sort -n |gzip >train_body.dat.gz.words.count.gz
zcat train_title.dat.gz|tr [:upper:] [:lower:]|tr ' ' '\n'|sort -T /otherdisk2/data/tmpsorting/|uniq -c|sort -n |gzip >train_title.dat.gz.words.count.gz
