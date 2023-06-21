create database fut7;
use fut7;

-- Creación de la tabla Jugadores
CREATE TABLE jugadores (
  nombre VARCHAR(100) PRIMARY KEY,
  goles INT
);

-- Creación de la tabla Partidos
CREATE TABLE partidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  equipo_local VARCHAR(100),
  equipo_visitante VARCHAR(100),
  resultado VARCHAR(100)
);

-- Creación de la tabla Goleadores
CREATE TABLE goles (
  goleador VARCHAR(100),
  partido_id INT,
  goles INT,
  FOREIGN KEY (goleador) REFERENCES jugadores(nombre),
  FOREIGN KEY (partido_id) REFERENCES partidos(id)
  );


-- Creación de la tabla Clasificacion
CREATE TABLE clasificacion (
  equipo VARCHAR(100),
  puntos INT,
  partidos_jugados INT,
  partidos_ganados INT,
  partidos_empatados INT,
  partidos_perdidos INT,
  goles_favor INT,
  goles_contra INT,
  golaverage INT
);


INSERT INTO jugadores (nombre, goles
) VALUES 
("Itur",13),
("Pablo",11),
("Mogul",10),
("Gonsi",8),
("Mateo",6),
("Victor",2),
("Juanlu",2),
("Martin",2),
("Dani",1),
("Jorge",1);

INSERT INTO partidos (equipo_local, equipo_visitante, resultado
) VALUES 
("Morena Mia", "PK FC","3-1"),
("PK FC", "Yayo Mcqueen","3-2"),
("Los Mamelukos", "PK FC","5-2"),
("PK FC", "Flacaçao","2-5"),
("Dictadores Gvng", "PK FC","5-0"),
("PK FC", "Combopollo","1-8"),
("PK FC", "Real Colicos","1-9"),
("Club Descansa", "PK FC","6-0"),
("Arrieros", "PK FC","10-1"),
("PK FC", "Reloj Angelote","6-2"),
("Yayo Mcqueen", "PK FC","5-6"),
("PK FC", "Los Mamelukos","1-7"),
("Flacaçao", "PK FC","4-3"),
("PK FC", "Dictadores Gvng","2-4"),
("PK FC", "Morena Mia","2-3"),
("Combopollo", "PK FC","3-2"),
("Real Colicos", "PK FC","7-6"),
("PK FC", "Arrieros","4-6"),
("Reloj Angelote", "PK FC","5-7"),
("PK FC", "Club Descansa","6-7");

select * from partidos;

INSERT INTO goles (partido_id, goleador, goles
) VALUES 
(1,"Mogul",1),
(2,"Mateo",1),
(2,"Itur",2),
(3,"Itur",1),
(3,"Gonsi",1),
(4,"Itur",1),
(4,"Mogul",1),
(6,"Mateo",1),
(7,"Mogul",1),
(9,"Gonsi",1),
(10,"Mogul",2),
(10,"Itur",1),
(10,"Gonsi",1),
(10,"Pablo",1),
(10,"Dani",1),
(11,"Pablo",2),
(11,"Itur",2),
(11,"Victor",1),
(11,"Juanlu",1),
(12,"Mogul",1),
(13,"Pablo",1),
(13,"Itur",1),
(13,"Gonsi",1),
(14,"Itur",1),
(14,"Jorge",1),
(15,"Gonsi",1),
(15,"Mogul",1),
(16,"Pablo",1),
(16,"Gonsi",1),
(17,"Itur",2),
(17,"Gonsi",1),
(17,"Juanlu",1),
(17,"Mogul",1),
(17,"Pablo",1),
(18,"Victor",1),
(18,"Mogul",1),
(18,"Mateo",1),
(18,"Pablo",1),
(19,"Pablo",4),
(19,"Itur",1),
(19,"Martin",2),
(20,"Mateo",3),
(20,"Itur",1),
(20,"Gonsi",1),
(20,"Mogul",1);


INSERT INTO clasificacion (equipo, puntos, partidos_jugados, partidos_ganados, partidos_empatados, partidos_perdidos, goles_favor,
					       goles_contra, golaverage) 
VALUES 
("Arrieros", 47, 20, 15, 2, 3, 120, 60, 60),
("Los Mamelukos", 44, 20, 14, 2, 4, 82, 55, 27),
("Club Descansa", 40, 20, 13, 1, 6, 95, 69, 26),
("Combopollo", 38, 20, 11, 5, 4, 102, 50, 52),
("Dictadores Gvng", 37, 20, 11, 4, 5, 57, 43, 14),
("Morena Mia", 32, 20, 10, 2, 8, 56, 59, "-3"),
("Flacaçao", 28, 20, 9, 1, 10, 63, 58, 5),
("Real Colicos", 27, 20, 8, 3, 9, 80, 98, "-18"),
("Potakings", 12, 20, 4, 0, 16, 56, 106, "-50"),
("Yayo Mcqueen", 11, 20, 3, 2, 15, 54, 85, "-31"),
("Reloj Angelote", 2, 20, 0, 2, 18, 45, 127, "-82");


