-- Crear tablas del modelo entidad-relación

-- Tabla: Zona
CREATE TABLE Zona (
    zona INT PRIMARY KEY,  -- Código único para cada zona
    Desc VARCHAR(255)      -- Descripción de la zona
);

-- Tabla: Gerente
CREATE TABLE Gerente (
    gerente INT PRIMARY KEY  -- Identificador único para cada gerente
);

-- Tabla: Rubro
CREATE TABLE Rubro (
    cod_rubro INT PRIMARY KEY,  -- Código único para cada rubro
    descri_rubro VARCHAR(255)   -- Descripción del rubro
);

-- Tabla intermedia para relacionar Zona, Gerente y Rubro
CREATE TABLE Zona_Gerente_Rubro (
    zona INT,                 -- Referencia a la tabla Zona
    gerente INT,              -- Referencia a la tabla Gerente
    cod_rubro INT,            -- Referencia a la tabla Rubro
    data_periodo DATE,        -- Período de los datos
    valor DECIMAL(18, 2),     -- Valor asociado al período
    PRIMARY KEY (zona, gerente, cod_rubro, data_periodo),
    FOREIGN KEY (zona) REFERENCES Zona(zona),
    FOREIGN KEY (gerente) REFERENCES Gerente(gerente),
    FOREIGN KEY (cod_rubro) REFERENCES Rubro(cod_rubro)
);
