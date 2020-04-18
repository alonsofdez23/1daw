CREATE TABLE PROVINCIA
(
    COD_PROVINCIA int NOT NULL,
    NOMBRE varchar(30),
    CONSTRAINT      PK_PROVINCIA PRIMARY KEY (COD_PROVINCIA)
);

CREATE TABLE HABITANTE
(
    COD_HABITANTE int NOT NULL,
    COD_PROVINCIA int NOT NULL,
    NOMBRE varchar(30),
    NIF char(10) UNIQUE,
    FECHA_NAC date,
    CONSTRAINT  PK_HABITANTE PRIMARY KEY (COD_HABITANTE),
    CONSTRAINT  FK_HABITANTE_PROVINCIA FOREIGN KEY (COD_PROVINCIA)
    REFERENCES  PROVINCIA (COD_PROVINCIA)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);