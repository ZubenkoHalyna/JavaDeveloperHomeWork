INSERT INTO skills(name) VALUES ('java'),('c++'),('sql'),('c#'),('php');

INSERT INTO companies (name) VALUES ('Luxoft'),('SoftServe');

INSERT INTO customers (name) VALUES ('TK "SAT"'),('Ltd "Horns and hooves"');

INSERT INTO projects (name, companieId, customerId) VALUES
  ('Collection of horns automation',2,2),
  ('Collection of hooves automation',1,2),
  ('Inventory control system',2,1),
  ('Logistics management',1,1);

INSERT INTO developers (firstName, lastName, projectId) VALUES
  ('Bolkonsky','Andrey',1),
  ('Bolkonskaya','Marya',1),
  ('Rostova','Natasha',2),
  ('Rostov','Nikolai',2),
  ('Bezukhov','Pierre',3),
  ('Dolokhov','Fedor',3),
  ('Kuragin','Anatole',4)
;

INSERT INTO developerSkills (developerId, skillId) VALUES
  (1,1),(1,4),
  (2,3),
  (3,2),(3,5),
  (4,1),(4,2),(4,4),
  (5,4),
  (6,2),(6,3),(6,5),
  (7,1),(7,2)
;