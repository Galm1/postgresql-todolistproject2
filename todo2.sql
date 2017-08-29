INSERT INTO todos (title, details, priority, createdAt) VALUES ('get gud', 'take time to study more', 2, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'go get some apples', 1, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'get some kiwis', 1, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('food', 'how about some bread. need some of that bread mannnn', 1, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('another title', 'here is a todo detail that i couldnt think of', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('be', 'the BEST.... AROUND', 4, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('aint', 'nobody ever gunna bring me down', 4, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('ok', 'time to take this list seriously', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'complete last weeks weekly', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'be just overall better', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('school', 'stay late', 3, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'node meet up with gil', 4, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'go to a meet up with andrew', 4, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('meet ups', 'go to more meet ups!', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'get to honor 5', 2, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'git gud scrub', 3, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('league', 'uninstall and kys', 5, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'live', 1, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'learn to fly', 4, current_timestamp);
INSERT INTO todos (title, details, priority, createdAt) VALUES ('life', 'travel', 5, current_timestamp);


update todos set completedat = current_timestamp where id = 4;
update todos set completedat = current_timestamp where id = 7;
update todos set completedat = current_timestamp where id = 16;


select title from todos where completedAt is null and id = 3;
select details from todos where completedAt is null and id = 3;
