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
