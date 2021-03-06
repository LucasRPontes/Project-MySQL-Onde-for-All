DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `PLANO`(
    `PLANO_ID` INT AUTO_INCREMENT PRIMARY KEY,
    `NOME` VARCHAR(100) NOT NULL,
    `VALOR` DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `ARTISTA` (
  `ARTISTA_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `NOME` VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `USUARIO`(
    `USUARIO_ID` INT AUTO_INCREMENT PRIMARY KEY,
    `NOME` VARCHAR(100) NOT NULL,
    `IDADE` INT NOT NULL,
    `PLANO_ID` INT NOT NULL,
    FOREIGN KEY (`PLANO_ID`) REFERENCES `PLANO` (`PLANO_ID`)
) ENGINE = InnoDB;

CREATE TABLE `ALBUM` (
  `ALBUM_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `NOME` VARCHAR(100) NOT NULL,
  `ARTISTA_ID` INT NOT NULL,
  FOREIGN KEY (`ARTISTA_ID`) REFERENCES `ARTISTA` (`ARTISTA_ID`)
) ENGINE = InnoDB;

CREATE TABLE `CANCOES` (
  `CANCOES_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `NOME` VARCHAR(100) NOT NULL,
  `ALBUM_ID` INT NOT NULL,
  FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM` (`ALBUM_ID`)
) ENGINE = InnoDB;

CREATE TABLE `HISTORICO_DE_REPRODUCOES` (
  `CANCOES_ID` INT NOT NULL,
  `USUARIO_ID` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`CANCOES_ID`,`USUARIO_ID`),
  FOREIGN KEY (`CANCOES_ID`) REFERENCES `CANCOES` (`CANCOES_ID`),
  FOREIGN KEY (`USUARIO_ID`) REFERENCES `USUARIO` (`USUARIO_ID`)
) ENGINE = InnoDB;

CREATE TABLE `SEGUIDORES` (
  `USUARIO_ID` INT NOT NULL,
  `ARTISTA_ID` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`USUARIO_ID`,`ARTISTA_ID`),
  FOREIGN KEY (`USUARIO_ID`) REFERENCES `USUARIO` (`USUARIO_ID`),
  FOREIGN KEY (`ARTISTA_ID`) REFERENCES `ARTISTA` (`ARTISTA_ID`)
) ENGINE = InnoDB;

INSERT INTO `PLANO`(`NOME`, `VALOR`)
VALUES
  ('Gratuito', 0),
  ('Universitário', 5.99),
  ('Familiar', 7.99);

INSERT INTO `ARTISTA`(`NOME`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO `USUARIO`(`NOME`, `IDADE`, `PLANO_ID`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

INSERT INTO `ALBUM`(`NOME`, `ARTISTA_ID`)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO `CANCOES`(`NOME`, `ALBUM_ID`)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5)
  ;

INSERT INTO `HISTORICO_DE_REPRODUCOES`(`CANCOES_ID`, `USUARIO_ID`)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (15, 2),
  (2, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4)
  ;

INSERT INTO `SEGUIDORES`(`USUARIO_ID`, `ARTISTA_ID`)
VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4)
;
