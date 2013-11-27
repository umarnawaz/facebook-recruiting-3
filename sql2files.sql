set search_path to kaggle_facebook_recruiting_3;

\copy (select id from raw_train order by id asc) to 'train_id.dat'
\copy (select id from raw_test order by id asc) to 'test_id.dat'

\copy (select title from raw_train order by id asc) to 'train_title.dat'
\copy (select title from raw_test order by id asc) to 'test_title.dat'

\copy (select body from raw_train order by id asc) to 'train_body.dat'
\copy (select body from raw_test order by id asc) to 'test_body.dat'

\copy (select tags from raw_train order by id asc) to 'train_tags.dat'

