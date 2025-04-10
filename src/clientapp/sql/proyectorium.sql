USE proyectorium;

ALTER TABLE movie DROP FOREIGN KEY FK_bv93d42qswtrd1b9384pxen57;

ALTER TABLE movie ADD CONSTRAINT FK_bv93d42qswtrd1b9384pxen57
FOREIGN KEY (provider_id) REFERENCES provider(id)
ON DELETE SET NULL;

-- Insertar datos en la tabla "provider"
INSERT INTO proyectorium.provider (id, name, email, phone, contractIni, contractEnd, price)
VALUES 
    (1, 'Warner Bros.', 'contact@warnerbros.com', 111111111, '2023-01-01', '2026-01-01', 500000),
    (2, 'Universal Pictures', 'info@universal.com', 222222222, '2023-02-01', '2026-02-01', 400000),
    (3, 'Paramount Pictures', 'service@paramount.com', 333333333, '2023-03-01', '2023-12-01', 600000);


-- Insertar datos en la tabla "category"
INSERT INTO proyectorium.category (id, name, description, creationDate, pegi)
VALUES 
    (1, 'Action', 'Action-packed movies', '2025-01-01', 'PEGI_18'),
    (2, 'Comedy', 'Comedy movies for all ages', '2025-01-02', 'PEGI_12'),
    (3, 'Horror', 'Scary movies', '2025-01-03', 'PEGI_16');


-- Insertar datos en la tabla "movie"
INSERT INTO proyectorium.movie (id, title, duration, sinopsis, releaseDate, movieHour, provider_id)
VALUES 
    (1, 'The Dark Knight', 152, 'Batman faces off against the Joker.', '2008-07-18', 'HOUR_16', 1),
    (2, 'Jurassic Park', 127, 'Dinosaurs are brought back to life with disastrous results.', '1993-06-11', 'HOUR_18', 2),
    (3, 'Inception', 148, 'A thief enters the dreams of others to steal secrets.', '2010-07-16', 'HOUR_20', 3);


INSERT INTO proyectorium.movie_category()
VALUES
(1,1),
(1,3),
(2,1),
(3,3);


-- Insertar datos en la tabla "user"
INSERT INTO proyectorium.user (id, email, fullName, password, street, city, zip, companyId, userType, numTickets, user_type)
VALUES 
    (1, 'admin1@example.com', 'Admin One', 'WuLegi4p5enGK/cX0y9kZA==', 'Street 1', 'City A', 10001, 1, 'ADMIN', NULL, 'UserEntity'),
    (2, 'customer1@example.com', 'Customer One', 'WuLegi4p5enGK/cX0y9kZA==', 'Street 2', 'City B', 10002, 1, 'CUSTOMER', 5, 'UserEntity');


-- Insertar datos en la tabla "ticket"
INSERT INTO proyectorium.ticket (id, buyDate, price, numPeople, movie_id, user_id)
VALUES 
    (1, '2025-01-10', 20.00, 2, 1, 2),  -- "The Dark Knight" (2 people)
    (2, '2025-01-11', 12.00, 1, 2, 2);  -- "Jurassic Park" (1 person)

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
