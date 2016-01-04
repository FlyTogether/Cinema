/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/10/28 13:55:42                          */
/*==============================================================*/


drop table if exists tb_admin;

drop table if exists tb_cinema;

drop table if exists tb_comment_movie;

drop table if exists tb_friends;

drop table if exists tb_mood;

drop table if exists tb_movie;

drop table if exists tb_order;

drop table if exists tb_orderItem;

drop table if exists tb_schedule;

drop table if exists tb_seat_schedule;

drop table if exists tb_user;

drop table if exists tb_videoHall;

/*==============================================================*/
/* Table: tb_admin                                              */
/*==============================================================*/
create table tb_admin
(
   id                   int not null auto_increment,
   Username             varchar(40),
   Password             varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: tb_cinema                                             */
/*==============================================================*/
create table tb_cinema
(
   id                   int not null auto_increment,
   Name                 varchar(40),
   Address              varchar(100),
   Phone                varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: tb_comment_movie                                      */
/*==============================================================*/
create table tb_comment_movie
(
   id                   int not null auto_increment,
   Content              text,
   CommitTime           datetime,
   User_id              int,
   Movie_id             int,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_friends                                            */
/*==============================================================*/
create table tb_friends
(
   id                   int not null auto_increment,
   User1_id             int,
   User2_id             int,
   State                varchar(10),
   Agree                boolean,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_mood                                               */
/*==============================================================*/
create table tb_mood
(
   id                   int not null auto_increment,
   Image                varchar(100),
   Content              text,
   Posttime             datetime,
   User_id              int,
   Share                varchar(100),
   primary key (id)
);

/*==============================================================*/
/* Table: tb_movie                                              */
/*==============================================================*/
create table tb_movie
(
   id                   int not null auto_increment,
   Name                 varchar(100),
   Director             varchar(40),
   Showtime             date,
   Runtime              char(20),
   CastActor            varchar(100),
   Language             varchar(40),
   Style                char(40),
   Area                 varchar(20),
   Type                 char(20),
   Introduction         text,
   Price                double,
   State                char(20) default '未删除',
   Image                varchar(100),
   Popularity           double default 7.5 ,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_order                                              */
/*==============================================================*/
create table tb_order
(
   id                   int not null auto_increment,
   User_id              int,
   Number               int,
   Price                double,
   Ordertime            datetime,
   State                varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: tb_orderItem                                          */
/*==============================================================*/
create table tb_orderItem
(
   id                   int not null auto_increment,
   Quantity             int,
   Price                double,
   Order_id             int,
   Movie_id             int,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_schedule                                           */
/*==============================================================*/
create table tb_schedule
(
   id                   int not null auto_increment,
   Airtime              datetime,
   TotalTicket          int default 60,
   VideoHall_id         int,
   Movie_id             int,
   Remanent             int default 60,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_seat_schedule                                      */
/*==============================================================*/
create table tb_seat_schedule
(
   id                   int not null auto_increment,
   State                varchar(10),
   Schedule_id          int,
   Number               int,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_user                                               */
/*==============================================================*/
create table tb_user
(
   id                   int not null auto_increment,
   Username             varchar(40),
   Password             varchar(40),
   Phone               varchar(11),
   Gender               char(4),
   Vip                  char(20) default '普通会员',
   State                char(20) default '未删除',
   Email                varchar(20),
   Birthday             date,
   Consumption          double,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_videoHall                                          */
/*==============================================================*/
create table tb_videoHall
(
   id                   int not null auto_increment,
   Name                 varchar(20),
   Cinema_id            int,
   primary key (id)
);

alter table tb_comment_movie add constraint FK_Reference_11 foreign key (Movie_id)
      references tb_movie (id) on delete restrict on update restrict;

alter table tb_comment_movie add constraint FK_Reference_3 foreign key (User_id)
      references tb_user (id) on delete restrict on update restrict;

alter table tb_friends add constraint FK_Reference_4 foreign key (User1_id)
      references tb_user (id) on delete restrict on update restrict;

alter table tb_friends add constraint FK_Reference_5 foreign key (User2_id)
      references tb_user (id) on delete restrict on update restrict;

alter table tb_mood add constraint FK_Reference_6 foreign key (User_id)
      references tb_user (id) on delete restrict on update restrict;

alter table tb_order add constraint FK_Reference_7 foreign key (User_id)
      references tb_user (id) on delete restrict on update restrict;

alter table tb_orderItem add constraint FK_Reference_1 foreign key (Movie_id)
      references tb_movie (id) on delete restrict on update restrict;

alter table tb_orderItem add constraint FK_Reference_2 foreign key (Order_id)
      references tb_order (id) on delete restrict on update restrict;

alter table tb_schedule add constraint FK_Reference_8 foreign key (Movie_id)
      references tb_movie (id) on delete restrict on update restrict;

alter table tb_schedule add constraint FK_Reference_9 foreign key (VideoHall_id)
      references tb_videoHall (id) on delete restrict on update restrict;

alter table tb_seat_schedule add constraint FK_Reference_12 foreign key (Schedule_id)
      references tb_schedule (id) on delete restrict on update restrict;

alter table tb_videoHall add constraint FK_Reference_10 foreign key (Cinema_id)
      references tb_cinema (id) on delete restrict on update restrict;

