USE Gimnasios;

-- Iniciar transaccion para eliminar registros de la tabla socios, se eliminaran los socios cuyo nombre sea Laura
START TRANSACTION;
DELETE FROM SOCIOS WHERE nombre = 'Laura';
-- ROLLBACK;
-- COMMIT;

-- Volver a insertar valores en caso de commit previo
-- INSERT INTO SOCIOS (Nombre, Apellido, DNI, Email, Telefono, SocioActivo) VALUES
-- ('Laura', 'Sanchez', 67890113, 'lauras@example.com', 46782012, 1),
-- ('Laura', 'Fernández', 67890123, 'laura@example.com', 46789012, 1);


-- Iniciar transaccion para insertar registros en la tabla reviews
START TRANSACTION;
-- Registro 1
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (15, 7, 23, 4, 8, 'Gran clase, el profesor fue muy claro.', '2023-08-19');
-- Registro 2
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (6, 2, 10, 6, 9, 'Experiencia deportiva increíble.', '2023-08-19');
-- Registro 3
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (28, 9, 18, 2, 6, 'La clase fue un poco aburrida.', '2023-08-19');
-- Registro 4
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (9, 5, 5, 3, 4, 'No quedé satisfecho con la clase.', '2023-08-19');

SAVEPOINT CUATRO_REGISTROS;
-- Registro 5
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (33, 4, 14, 8, 7, 'La sede deberia mejorar las instalaciones, el profesor y la clase excelentes', '2023-08-19');
-- Registro 6
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (21, 1, 8, 1, 10, '¡La mejor clase que he tenido!', '2023-08-19');
-- Registro 7
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (37, 10, 20, 7, 5, 'No disfrute mucho esta clase.', '2023-08-19');
-- Registro 8
INSERT INTO REVIEWS (ID_Socio, ID_Sede, ID_Profesor, ID_Clase, Calificacion, Comentarios, FechaReview) 
VALUES (34, 10, 13, 4, 2, 'Muy mala disposcion del staff', '2023-08-19');
SAVEPOINT OCHO_REGISTROS;

-- Sentencia para eliminar el primer savepoint
-- RELEASE SAVEPOINT CUATRO_REGISTROS;

