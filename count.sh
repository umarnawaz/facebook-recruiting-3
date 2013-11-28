zcat test_body.dat.gz| sort | uniq -c|sort -n|gzip >test_body.dat.gz.counted.gz
zcat test_id.dat.gz| sort | uniq -c|sort -n|gzip >test_id.dat.gz.counted.gz
zcat test_title.dat.gz| sort | uniq -c|sort -n|gzip >test_title.dat.gz.counted.gz
zcat train_body.dat.gz| sort | uniq -c|sort -n|gzip >train_body.dat.gz.counted.gz
zcat train_id.dat.gz| sort | uniq -c|sort -n|gzip >train_id.dat.gz.counted.gz
zcat train_tags.dat.gz| sort | uniq -c|sort -n|gzip >train_tags.dat.gz.counted.gz
zcat train_title.dat.gz| sort | uniq -c|sort -n|gzip >train_title.dat.gz.counted.gz
