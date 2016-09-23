# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table demo_user (
  id                            integer auto_increment not null,
  constraint pk_demo_user primary key (id)
);


# --- !Downs

drop table if exists demo_user;

