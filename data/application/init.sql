CREATE DATABASE IF NOT EXISTS reg1;
CREATE USER 'custom' @'%' IDENTIFIED BY 'password';
GRANT 
SELECT 
  , 
UPDATE 
  , 
  INSERT ON reg1.* TO 'custom' @'%';
FLUSH PRIVILEGES;
USE reg1;
CREATE TABLE IF NOT EXISTS regions (
  region VARCHAR(100) NOT NULL, 
  maincity VARCHAR(50) NOT NULL, 
  population INT (10) NOT NULL
);
INSERT INTO regions (region, maincity, population) 
VALUES 
  (
    'Primorskij kraj', 'Vladivostok', 
    '1845'
  ), 
  (
    'Khabarovskij kraj', 'Khabarovsk', 
    '1291'
  ), 
  (
    'Amurskaja oblast', 'Blagovestchensk', 
    '767'
  );
