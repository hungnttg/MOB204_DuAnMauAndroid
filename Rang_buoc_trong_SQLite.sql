
CREATE TABLE supplier_groups (
	group_id integer PRIMARY KEY,
	group_name text NOT NULL
);

CREATE TABLE suppliers (
    supplier_id   INTEGER PRIMARY KEY,
    supplier_name TEXT    NOT NULL,
    group_id      INTEGER,
    FOREIGN KEY (group_id)
    REFERENCES supplier_groups (group_id) 
       ON UPDATE RESTRICT
       ON DELETE RESTRICT
);
PRAGMA foreign_keys = ON;
INSERT INTO supplier_groups (group_name)
VALUES
   ('Domestic'),
   ('Global'),
   ('One-Time');

 INSERT INTO suppliers (supplier_name, group_id)
VALUES('XYZ Corp', 3);

INSERT INTO suppliers (supplier_name, group_id)
VALUES('ABC Corp', 3);

DELETE FROM supplier_groups 
WHERE group_id = 3;
--------
SELECT * FROM suppliers;