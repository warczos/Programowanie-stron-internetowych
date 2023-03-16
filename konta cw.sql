CREATE USER 'klasa_i'@'%' IDENTIFIED BY 'ZAQ!@wsx';
CREATE USER 'informatyk'@'%' IDENTIFIED BY 'qwerty';

GRANT ALL PRIVILEGES ON *.* TO 'klasa_i'@'%';
GRANT select, create, alter, insert ON library4.* TO 'informatyk'@'%';

REVOKE ALL PRIVILEGES ON *.* FROM 'informatyk'@'%';