CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    chief VARCHAR(512) NOT NULL,
    name VARCHAR(1024) NOT NULL
);

ALTER TABLE groups
ADD COLUMN cathedral_id INTEGER;
INSERT INTO cathedrals (name, chief)
VALUES    ('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
          ('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');
SELECT * FROM cathedrals;
UPDATE groups
SET cathedral_id = 1
WHERE short_name = 'Б-ФИИТ-25';
UPDATE groups
SET cathedral_id = 1
WHERE short_name = 'Б-ИВТ-25-1' OR short_name = 'Б-ИВТ-25-2';
UPDATE groups
SET cathedral_id = 2
WHERE short_name = 'Б-ПИ-25-1';

SELECT * FROM groups WHERE cathedral_id = 1;
