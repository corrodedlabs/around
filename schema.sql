create table users (
 id integer primary key,
 name text,
 email text,
 token text
);

create table sources (
 id integer primary key,
 name text,
 url text,
 meta text
);

create table articles (
 id integer primary key,
 title text,
 url text,
 meta text,
 source_id integer,
 foreign key(source_id) references sources
);

create table user_source_prefs (
  id integer primary key,
  user_id integer,
  source_id integer,
  meta text,
  foreign key(user_id) references users,
  foreign key(source_id) references sources
);

create table user_articles (
  id integer primary key,
  user_id integer,
  article_id integer,
  order_weight integer,
  bookmark integer,
  feed_date text
);
