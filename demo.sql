DROP DATABASE IF EXISTS demodb;

CREATE DATABASE IF NOT EXISTS demodb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

DROP TABLE IF EXISTS clients;

CREATE TABLE IF NOT EXISTS clients(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    rfc VARCHAR(60) DEFAULT NULL,
    email VARCHAR(200),
    status CHAR DEFAULT 'A' COMMENT 'Estado del clienta a=activo, b = banned, c=cancelado',
    gob_doc VARCHAR(100) NOT NULL COMMENT 'Documento emitido por un gobierno como IFE, documento, CURP, etc.',
    country_id TINYINT UNSIGNED NOT NULL,
    province_id SMALLINT UNSIGNED NOT NULL,
    location_id MEDIUMINT UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT pk_clients_id PRIMARY KEY (id),
    CONSTRAINT unique_gob_doc UNIQUE (gob_doc),

    ## KEY es un sinonimo de INDEX
    KEY key_country_id (country_id),
    KEY key_province_id (province_id),
    KEY key_location_id (location_id),
    INDEX index_country_province_location (country_id,province_id,location_id)
)
ENGINE = InnoDB
CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE clients CHANGE email email VARCHAR(250);


ALTER TABLE clients CHANGE email email VARCHAR(200) AFTER status;


ALTER TABLE clients CHANGE email email VARCHAR(200) AFTER rfc;