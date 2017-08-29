```

todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('get gud', 'take time to study more', 2, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'go get some apples', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'get some kiwis', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'how about some bread. need some of that bread mannnn', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('another title', 'here is a todo detail that i couldnt think of', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('be', 'the BEST.... AROUND', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('aint', 'nobody ever gunna bring me down', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('ok', 'time to take this list seriously', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'complete last weeks weekly', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'be just overall better', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'stay late', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'node meet up with gil', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'go to a meet up with andrew', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'go to more meet ups!', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'get to honor 5', 2, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'git gud scrub', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'uninstall and kys', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'live', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'learn to fly', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'travel', 5, current_timestamp);
INSERT 0 1
todolist=# \d
                List of relations
 Schema |      Name       |   Type   |   Owner   
--------+-----------------+----------+-----------
 public | todolist        | table    | eligarcia
 public | todolist_id_seq | sequence | eligarcia
 public | todos           | table    | eligarcia
 public | todos_id_seq    | sequence | eligarcia
(4 rows)

todolist=# \d todolist
                                      Table "public.todolist"
   Column    |            Type             |                       Modifiers                       
-------------+-----------------------------+-------------------------------------------------------
 id          | integer                     | not null default nextval('todolist_id_seq'::regclass)
 title       | character varying(100)      | not null
 details     | character varying(255)      |
 priority    | integer                     | not null
 createdat   | timestamp without time zone | not null
 completedat | timestamp without time zone | not null
Indexes:
    "todolist_pkey" PRIMARY KEY, btree (id)
    "todolist_details_key" UNIQUE CONSTRAINT, btree (details)

todolist=# \l
                                   List of databases
   Name    |   Owner   | Encoding |   Collate   |    Ctype    |    Access privileges    
-----------+-----------+----------+-------------+-------------+-------------------------
 postgres  | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 school3db | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 schooldb  | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/eligarcia           +
           |           |          |             |             | eligarcia=CTc/eligarcia
 template1 | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/eligarcia           +
           |           |          |             |             | eligarcia=CTc/eligarcia
 todolist  | eligarcia | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
(6 rows)

todolist=# \d
                List of relations
 Schema |      Name       |   Type   |   Owner   
--------+-----------------+----------+-----------
 public | todolist        | table    | eligarcia
 public | todolist_id_seq | sequence | eligarcia
 public | todos           | table    | eligarcia
 public | todos_id_seq    | sequence | eligarcia
(4 rows)

todolist=# select title from todos where completedAt is null;
     title     
---------------
 postgresql
 some title
 get gud
 food
 food
 food
 another title
 be
 aint
 ok
 school
 school
 school
 meet ups
 meet ups
 meet ups
 league
 league
 league
 life
 life
 life
(22 rows)

todolist=# select details from todos where completedAt is null;
                       details                        
------------------------------------------------------
 learn this crap
 here is something i need todo
 take time to study more
 go get some apples
 get some kiwis
 how about some bread. need some of that bread mannnn
 here is a todo detail that i couldnt think of
 the BEST.... AROUND
 nobody ever gunna bring me down
 time to take this list seriously
 complete last weeks weekly
 be just overall better
 stay late
 node meet up with gil
 go to a meet up with andrew
 go to more meet ups!
 get to honor 5
 git gud scrub
 uninstall and kys
 live
 learn to fly
 travel
(22 rows)


```
////////////////////////////////////////////
```

todolist=# select * from todos
todolist-# ;

 id |     title     |                       details                        | priority |         createdat          |        completedat         
----+---------------+------------------------------------------------------+----------+----------------------------+----------------------------
  2 | postgresql    | learn this crap                                      |        5 | 2017-08-28 15:38:15.185521 |
  3 | some title    | here is something i need todo                        |        2 | 2017-08-28 15:38:15.187581 |
  5 | food          | go get some apples                                   |        1 | 2017-08-29 11:13:04.446635 |
  6 | food          | get some kiwis                                       |        1 | 2017-08-29 11:13:04.447937 |
  8 | another title | here is a todo detail that i couldnt think of        |        5 | 2017-08-29 11:13:04.450801 |
  9 | be            | the BEST.... AROUND                                  |        4 | 2017-08-29 11:13:04.451941 |
 10 | aint          | nobody ever gunna bring me down                      |        4 | 2017-08-29 11:13:04.453198 |
 11 | ok            | time to take this list seriously                     |        5 | 2017-08-29 11:13:04.52201  |
 12 | school        | complete last weeks weekly                           |        5 | 2017-08-29 11:13:04.523908 |
 13 | school        | be just overall better                               |        5 | 2017-08-29 11:13:04.525264 |
 14 | school        | stay late                                            |        3 | 2017-08-29 11:13:04.526529 |
 15 | meet ups      | node meet up with gil                                |        4 | 2017-08-29 11:13:04.527843 |
 17 | meet ups      | go to more meet ups!                                 |        5 | 2017-08-29 11:13:04.53032  |
 18 | league        | get to honor 5                                       |        2 | 2017-08-29 11:13:04.531459 |
 19 | league        | git gud scrub                                        |        3 | 2017-08-29 11:13:04.532586 |
 20 | league        | uninstall and kys                                    |        5 | 2017-08-29 11:13:04.622307 |
 21 | life          | live                                                 |        1 | 2017-08-29 11:13:04.625354 |
 22 | life          | learn to fly                                         |        4 | 2017-08-29 11:13:04.626633 |
 23 | life          | travel                                               |        5 | 2017-08-29 11:13:05.65367  |
  4 | get gud       | take time to study more                              |        2 | 2017-08-29 11:13:04.424422 | 2017-08-29 11:19:16.520726
  7 | food          | how about some bread. need some of that bread mannnn |        1 | 2017-08-29 11:13:04.449371 | 2017-08-29 11:19:16.525833
 16 | meet ups      | go to a meet up with andrew                          |        4 | 2017-08-29 11:13:04.529138 | 2017-08-29 11:19:19.672182
(22 rows)

~
~
~

```

```

todolist=# update todos set completedat = current_timestamp where id = 4;
UPDATE 1
todolist=# update todos set completedat = current_timestamp where id = 7;
UPDATE 1
todolist=# update todos set completedat = current_timestamp where id = 16;
UPDATE 1
todolist=# select title and details from todos where completedAt is not null;
ERROR:  argument of AND must be type boolean, not type character varying
LINE 1: select title and details from todos where completedAt is not...
               ^
todolist=# select details from todos where completedAt is not null;
                       details                        
------------------------------------------------------
 take time to study more
 how about some bread. need some of that bread mannnn
 go to a meet up with andrew
(3 rows)

todolist=#

```

```

todolist=# select title from todos where completedAt is null and id = 3;
   title    
------------
 some title
(1 row)

todolist=# select details from todos where completedAt is null and id = 3;
            details            
-------------------------------
 here is something i need todo
(1 row)

```

```

todolist=# select priority from todos where completedAt is null;
 priority
----------
        5
        2
        1
        1
        5
        4
        4
        5
        5
        5
        3
        4
        5
        2
        3
        5
        1
        4
        5
(19 rows)

```

```

todolist=# select priority from todos where todos.completedAt > current_timestamp - interval '30' day;
 priority
----------
        2
        1
        4
(3 rows)

```

```

todolist=# select details, min(createdAt) from todos where priority =5 group by title, details;
                    details                    |            min             
-----------------------------------------------+----------------------------
 here is a todo detail that i couldnt think of | 2017-08-29 11:13:04.450801
 uninstall and kys                             | 2017-08-29 11:13:04.622307
 travel                                        | 2017-08-29 11:13:05.65367
 go to more meet ups!                          | 2017-08-29 11:13:04.53032
 time to take this list seriously              | 2017-08-29 11:13:04.52201
 learn this crap                               | 2017-08-28 15:38:15.185521
 be just overall better                        | 2017-08-29 11:13:04.525264
 complete last weeks weekly                    | 2017-08-29 11:13:04.523908
(8 rows)

todolist=#


now i need to figure out how to get the highest one only

```

```

todolist=# select details, min(createdAt) from todos where priority =5 group by title, details limit 1;
                    details                    |            min             
-----------------------------------------------+----------------------------
 here is a todo detail that i couldnt think of | 2017-08-29 11:13:04.450801
(1 row)

todolist=#

```
