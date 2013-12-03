set search_path to kaggle_facebook_recruiting_3;

drop table train_title_words;
drop table test_title_words;
drop table train_body_words;
drop table test_body_words;

create table train_title_words(line int, word text);
create table test_title_words(line int, word text);
create table train_body_words(line int, word text);
create table test_body_words(line int, word text);

\copy train_title_words from 'test_body_words.tsv'
\copy train_title_words from 'test_title_words.tsv'
\copy train_title_words from 'train_body_words.tsv'
\copy train_title_words from 'train_title_words.tsv'
