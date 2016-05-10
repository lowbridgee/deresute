# -*- coding: utf-8 -*-

require 'rubygems'
require 'sqlite3'


#db = SQLite3::Database.new("idle.db")
#db = SQLite3::Database.new("skill.db")
db = SQLite3::Database.new("center.db")

# 新規DB作成
#sql = <<SQL
#CREATE TABLE idles (
#  id         integer   PRIMARY KEY AUTOINCREMENT,
#  idle_type  text      NOT NULL,
#  rarelity   text    NOT NULL,
#  name       text      NOT NULL,
#  life       integer   NOT NULL,
#  vocal      integer   NOT NULL,
#  dance      integer   NOT NULL,
#  visual     integer   NOT NULL,
#  total      integer   NOT NULL );
#SQL

# Skill DB作成
#sql = <<SQL
#CREATE TABLE skills (
#  id         integer   PRIMARY KEY,
#  name       text      NOT NULL,
#  skill_name text      NOT NULL,
#  skill_type text      NOT NULL,
#  interval   integer   NOT NULL,
#  length     text      NOT NULL,
#　ol_life    integer
#);
#SQL

# センター効果DB作成
sql = <<SQL
CREATE TABLE centers (
  id         integer   PRIMARY KEY,
  name       text      NOT NULL,
  skill_name text      NOT NULL,
  status_up  text      NOT NULL,
  persentage integer   NOT NULL
);
SQL

db.execute(sql)
