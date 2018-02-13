CREATE USER 'Administrador'@'localhost'
IDENTIFIED BY 'Admin?1e';

GRANT ALL ON ComboiosSociais.* TO 'Administrador'@'localhost';

CREATE USER 'Cliente'@'localhost'
IDENTIFIED BY 'Admin?1o';

GRANT SELECT(NumB,NumL,Preco,HPart,HCheg,PrecoR) ON Bilhete TO 'Cliente'@'localhost';

GRANT SELECT ON Percurso TO 'Cliente'@'localhost';

CREATE USER 'Vendedor'@'localhost'
IDENTIFIED BY 'Admin?1a';

GRANT UPDATE(NumB, NumL, Data, Preco, HPart, HCheg, Reserva, Cliente, Funcionario, PerOrigem, PerDestino) ON Bilhete TO 'Vendedor'@'localhost';

GRANT INSERT, SELECT, DELETE, REFERENCES ON Bilhete TO 'Vendedor'@'localhost';

GRANT SELECT ON Cliente TO 'Vendedor'@'localhost';

GRANT SELECT ON Contacto TO 'Vendedor'@'localhost';

GRANT SELECT ON Funcionario TO 'Vendedor'@'localhost';

CREATE USER 'Maquinista'@'localhost'
IDENTIFIED BY 'Admin?1i';

GRANT SELECT ON Comboio TO 'Maquinista'@'localhost';

GRANT SELECT ON Percurso TO 'Maquinista'@'localhost';

GRANT SELECT ON PercursoComboio TO 'Maquinista'@'localhost';

GRANT SELECT ON Lugar TO 'Maquinista'@'localhost';

GRANT SELECT ON Funcionario TO 'Maquinista'@'localhost';