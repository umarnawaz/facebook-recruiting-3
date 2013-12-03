set search_path to kaggle_facebook_recruiting_3;


-- create table title_duplicates as
-- select 
-- raw_train.id as train_id,
-- raw_test.id as test_id,
-- raw_train.title as train_title,
-- raw_test.title as test_title
-- from raw_train inner join raw_test on raw_train.title = raw_test.title;

-- create table body_duplicates as
-- select 
-- raw_train.id as train_id,
-- raw_test.id as test_id,
-- raw_train.body as train_body,
-- raw_test.body as test_body
-- from raw_train inner join raw_test on raw_train.body = raw_test.body;

-- create table title_body_duplicates as
-- select title_duplicates.train_id,title_duplicates.test_id
-- from title_duplicates
-- inner join body_duplicates 
-- on title_duplicates.train_id = body_duplicates.train_id
-- and title_duplicates.test_id = body_duplicates.test_id;

-- create table title_body_duplicates_tags as
-- select 
-- raw_test.id,
-- raw_train.tags
-- from title_body_duplicates
-- left join raw_train on title_body_duplicates.train_id = raw_train.id
-- left join raw_test on title_body_duplicates.test_id = raw_test.id;

-- create table title_duplicates_tags as
-- select 
-- raw_test.id,
-- raw_train.tags
-- from title_duplicates
-- left join raw_train on title_duplicates.train_id = raw_train.id
-- left join raw_test on title_duplicates.test_id = raw_test.id;

-- create table body_duplicates_tags as
-- select 
-- raw_test.id,
-- raw_train.tags
-- from body_duplicates
-- left join raw_train on body_duplicates.train_id = raw_train.id
-- left join raw_test on body_duplicates.test_id = raw_test.id;

-- create table duplicates_tags as
-- select * from title_body_duplicates_tags union
-- select * from title_duplicates_tags union
-- select * from body_duplicates_tags;

-- create view test_id as select id from raw_test;
-- create view duplicates_id as select id from duplicates_tags;

-- select * from duplicates_id except select * from test_id;

-- create table id_duplicates_tags as
-- select raw_test.id,duplicates_tags.tags
-- from raw_test
-- left join duplicates_tags on raw_test.id = duplicates_tags.id;

\copy (select * from id_duplicates_tags) to 'id_duplicates_tags.tsv'
