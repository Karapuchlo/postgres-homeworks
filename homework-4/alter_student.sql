-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student(
  student_id serial PRIMARY KEY,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  birthday date NOT NULL,
  phone varchar
);


-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar;

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES
    ('Иван', 'Петров', '1995-04-10', '555-1234'),
    ('Мария', 'Сидорова', '1996-02-15', '555-5678'),
    ('Андрей', 'Кузнецов', '1994-08-22', '555-9090');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
DELETE FROM student;
ALTER SEQUENCE student_student_id_seq RESTART WITH 1;
