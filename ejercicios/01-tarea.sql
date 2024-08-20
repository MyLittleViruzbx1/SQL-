

-- 1. Ver todos los registros

    SELECT * FROM users;

        -- Perfect

-- 2. Ver el registro cuyo id sea igual a 10

    -- mi respuest que funciono: 
    SELECT * FROM users LIMIT 1 OFFSET 9;

    -- la correcta: 
    select * from users where id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)

    -- esta bien solo me falto el espacio 
    SELECT * FROM users WHERE name LIKE 'Jim%';    --lo que hice
    SELECT * FROM users WHERE name LIKE 'Jim %';   -- correcto



-- 4. Todos los registros cuyo segundo nombre es Alexander

SELECT * FROM users WHERE name LIKE '% Alexander';

    --Perfect


-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'

    UPDATE users SET name = 'Michorizo' WHERE id = 1;

    --Perfect

-- 6. Borrar el último registro de la tabla

DELETE FROM users WHERE name = 'Caleb Reyes'; --que realice

DELETE FROM users WHERE id = (SELECT max(id) FROM users);

