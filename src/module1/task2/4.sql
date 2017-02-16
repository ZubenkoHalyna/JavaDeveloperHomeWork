ALTER TABLE projects ADD COLUMN cost INT;
UPDATE projects SET cost = 20000 where id=1;
UPDATE projects SET cost = 40000 where id=2;
UPDATE projects SET cost = 60000 where id=3;
UPDATE projects SET cost = 30000 where id=4;