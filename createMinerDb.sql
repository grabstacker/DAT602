CREATE TABLE Bitcoin (bitcoinID int auto_increment NOT NULL, totalValue int NOT NULL, tileID int NOT NULL, playerID int NULL, PRIMARY KEY (bitcoinID));
CREATE TABLE Game (gameID int auto_increment NOT NULL, name varchar(20) NOT NULL, startTime datetime NOT NULL, PRIMARY KEY (gameID));
CREATE TABLE Multiplier (multiplierID int auto_increment NOT NULL, multiplierAmount int NOT NULL, countDownTimer int NOT NULL, positionX int NOT NULL, positionY int NOT NULL, tileID int NOT NULL, PRIMARY KEY (multiplierID));
CREATE TABLE Player (playerID int auto_increment NOT NULL, name varchar(50) NOT NULL UNIQUE, password varchar(50) NOT NULL, hiScore int NULL, currentMultiplier int NULL, isOnline varchar(5) NOT NULL, isAdmin varchar(5) NOT NULL, positionX int NOT NULL, positionY int NOT NULL, multiplierID int NULL, poolID int NOT NULL, PRIMARY KEY (playerID));
CREATE TABLE Pool (poolID int auto_increment NOT NULL, hardwarePower int NULL, bitcoinsMined int NULL, hashRate int NULL, gameID int NOT NULL, PRIMARY KEY (poolID));
CREATE TABLE Tile (tileID int auto_increment NOT NULL, positionX int NOT NULL, positionY int NOT NULL, PRIMARY KEY (tileID));
ALTER TABLE Pool ADD CONSTRAINT FKPool201257 FOREIGN KEY (gameID) REFERENCES Game (gameID);
ALTER TABLE Player ADD CONSTRAINT FKPlayer418265 FOREIGN KEY (poolID) REFERENCES Pool (poolID);
ALTER TABLE Player ADD CONSTRAINT FKPlayer630894 FOREIGN KEY (multiplierID) REFERENCES Multiplier (multiplierID);
ALTER TABLE Bitcoin ADD CONSTRAINT FKBitcoin357621 FOREIGN KEY (playerID) REFERENCES Player (playerID);
ALTER TABLE Bitcoin ADD CONSTRAINT FKBitcoin842456 FOREIGN KEY (tileID) REFERENCES Tile (tileID);
ALTER TABLE Multiplier ADD CONSTRAINT FKMultiplier748266 FOREIGN KEY (tileID) REFERENCES Tile (tileID);


