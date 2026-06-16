-- ============================================================================
-- SCRIPT SQL DDL - BANCO - DB2 IBM i
-- 114 Tablas organizadas en 15 módulos funcionales
-- Generado automáticamente desde estructura_bd.md
-- ============================================================================

-- ============================================================================
-- MODULO 1: ARCHIVOS COMUNES (27 tablas)
-- ============================================================================

-- TABLA: CNOFT
CREATE TABLE CNOFT (
    codigo_tabla VARCHAR(20) NOT NULL,
    idioma VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cnoft_pk PRIMARY KEY (codigo_tabla, idioma)
);

CREATE INDEX idx_cnoft_created_at ON CNOFT (created_at);

-- TABLA: CNOFC
CREATE TABLE CNOFC (
    codigo_tabla VARCHAR(20) NOT NULL,
    codigo_registro VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cnofc_pk PRIMARY KEY (codigo_tabla, codigo_registro)
);

CREATE INDEX idx_cnofc_created_at ON CNOFC (created_at);

-- TABLA: MLNCT
CREATE TABLE MLNCT (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_de_notificacion VARCHAR(20) NOT NULL,
    nivel INTEGER NOT NULL,
    idioma VARCHAR(20) NOT NULL,
    secuencia INTEGER NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_mlnct_pk PRIMARY KEY (codigo_banco, codigo_de_notificacion, nivel, idioma, secuencia)
);

CREATE INDEX idx_mlnct_created_at ON MLNCT (created_at);

-- TABLA: MLNOT
CREATE TABLE MLNOT (
    codigo_banco VARCHAR(20) NOT NULL,
    fecha_proceso DATE NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    codigo_de_notificacion VARCHAR(20) NOT NULL,
    nivel INTEGER NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_mlnot_pk PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
);

CREATE INDEX idx_mlnot_fecha ON MLNOT (fecha_proceso);
CREATE INDEX idx_mlnot_created_at ON MLNOT (created_at);

-- TABLA: HSNOT
CREATE TABLE HSNOT (
    codigo_banco VARCHAR(20) NOT NULL,
    fecha_proceso DATE NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    codigo_de_notificacion VARCHAR(20) NOT NULL,
    nivel INTEGER NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_hsnot_pk PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
);

CREATE INDEX idx_hsnot_fecha ON HSNOT (fecha_proceso);
CREATE INDEX idx_hsnot_created_at ON HSNOT (created_at);

-- TABLA: HEAD
CREATE TABLE HEAD (
    nombre_printer_file VARCHAR(50) NOT NULL,
    secuencia INTEGER NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_head_pk PRIMARY KEY (nombre_printer_file, secuencia)
);

CREATE INDEX idx_head_created_at ON HEAD (created_at);

-- TABLA: MSSGS
CREATE TABLE MSSGS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_mssgs_pk PRIMARY KEY (id)
);

CREATE INDEX idx_mssgs_created_at ON MSSGS (created_at);

-- TABLA: HOLYD
CREATE TABLE HOLYD (
    codigo_moneda VARCHAR(20) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_holyd_pk PRIMARY KEY (codigo_moneda, fecha)
);

CREATE INDEX idx_holyd_fecha ON HOLYD (fecha);
CREATE INDEX idx_holyd_created_at ON HOLYD (created_at);

-- TABLA: APCLS
CREATE TABLE APCLS (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_de_producto VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_apcls_pk PRIMARY KEY (codigo_banco, codigo_de_producto)
);

CREATE INDEX idx_apcls_created_at ON APCLS (created_at);

-- TABLA: RATES
CREATE TABLE RATES (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_rates_pk PRIMARY KEY (codigo_banco, codigo_moneda)
);

CREATE INDEX idx_rates_created_at ON RATES (created_at);

-- TABLA: RTRNS
CREATE TABLE RTRNS (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_rtrns_pk PRIMARY KEY (codigo_banco, codigo_moneda, fecha)
);

CREATE INDEX idx_rtrns_fecha ON RTRNS (fecha);
CREATE INDEX idx_rtrns_created_at ON RTRNS (created_at);

-- TABLA: HLHIS
CREATE TABLE HLHIS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_hlhis_pk PRIMARY KEY (id)
);

CREATE INDEX idx_hlhis_created_at ON HLHIS (created_at);

-- TABLA: PRENA
CREATE TABLE PRENA (
    nombre_programa VARCHAR(50) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_prena_pk PRIMARY KEY (nombre_programa)
);

CREATE INDEX idx_prena_created_at ON PRENA (created_at);

-- TABLA: PRENS
CREATE TABLE PRENS (
    nombre_programa VARCHAR(50) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_prens_pk PRIMARY KEY (nombre_programa)
);

CREATE INDEX idx_prens_created_at ON PRENS (created_at);

-- TABLA: UT500
CREATE TABLE UT500 (
    codigo_usuario VARCHAR(20) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ut500_pk PRIMARY KEY (codigo_usuario, fecha)
);

CREATE INDEX idx_ut500_fecha ON UT500 (fecha);
CREATE INDEX idx_ut500_created_at ON UT500 (created_at);

-- TABLA: UT510
CREATE TABLE UT510 (
    codigo_usuario VARCHAR(20) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ut510_pk PRIMARY KEY (codigo_usuario, fecha)
);

CREATE INDEX idx_ut510_fecha ON UT510 (fecha);
CREATE INDEX idx_ut510_created_at ON UT510 (created_at);

-- TABLA: MICRF
CREATE TABLE MICRF (
    tipo_formulario VARCHAR(50) NOT NULL,
    nombre_reporte VARCHAR(50) NOT NULL,
    secuencia INTEGER NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_micrf_pk PRIMARY KEY (tipo_formulario, nombre_reporte, secuencia)
);

CREATE INDEX idx_micrf_created_at ON MICRF (created_at);

-- TABLA: IBSDD
CREATE TABLE IBSDD (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ibsdd_pk PRIMARY KEY (id)
);

CREATE INDEX idx_ibsdd_created_at ON IBSDD (created_at);

-- TABLA: IBTBL
CREATE TABLE IBTBL (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ibtbl_pk PRIMARY KEY (id)
);

CREATE INDEX idx_ibtbl_created_at ON IBTBL (created_at);

-- TABLA: TRANS
CREATE TABLE TRANS (
    id_transaccion BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    numero_registro_relativo VARCHAR(30),
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    id_cliente VARCHAR(30),
    fecha_operacion DATE,
    fecha_valor DATE,
    hora_operacion TIME,
    tipo_movimiento VARCHAR(20),
    debito_credito CHAR(1),
    monto DECIMAL(18,2),
    saldo_anterior DECIMAL(18,2),
    saldo_posterior DECIMAL(18,2),
    canal_origen VARCHAR(20),
    terminal_origen VARCHAR(30),
    referencia_externa VARCHAR(40),
    estado_transaccion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_trans_pk PRIMARY KEY (id_transaccion)
);

CREATE INDEX idx_trans_reg_rel ON TRANS (numero_registro_relativo);
CREATE INDEX idx_trans_cuenta_fecha ON TRANS (numero_cuenta, fecha_operacion);
CREATE INDEX idx_trans_contable_fecha ON TRANS (cuenta_contable, fecha_operacion);
CREATE INDEX idx_trans_cliente_fecha ON TRANS (id_cliente, fecha_operacion);
CREATE INDEX idx_trans_created_at ON TRANS (created_at);

-- TABLA: TRDSC
CREATE TABLE TRDSC (
    numero_registro_relativo VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_descripcion VARCHAR(20),
    texto_descripcion VARCHAR(200),
    codigo_idioma VARCHAR(5),
    formato_salida VARCHAR(20),
    obligatorio BOOLEAN,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_trdsc_pk PRIMARY KEY (numero_registro_relativo, secuencia)
);

CREATE INDEX idx_trdsc_tipo ON TRDSC (tipo_descripcion);
CREATE INDEX idx_trdsc_created_at ON TRDSC (created_at);

-- TABLA: TTRAN
CREATE TABLE TTRAN (
    id_transaccion_dia BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    numero_registro_relativo VARCHAR(30),
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    id_cliente VARCHAR(30),
    fecha DATE NOT NULL,
    fecha_valor DATE,
    hora_operacion TIME,
    tipo_movimiento VARCHAR(20),
    debito_credito CHAR(1),
    monto DECIMAL(18,2),
    saldo_anterior DECIMAL(18,2),
    saldo_posterior DECIMAL(18,2),
    canal_origen VARCHAR(20),
    terminal_origen VARCHAR(30),
    referencia_externa VARCHAR(40),
    estado_transaccion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ttran_pk PRIMARY KEY (id_transaccion_dia, codigo_banco)
);

CREATE INDEX idx_ttran_reg_rel ON TTRAN (numero_registro_relativo);
CREATE INDEX idx_ttran_cuenta_fecha ON TTRAN (numero_cuenta, fecha);
CREATE INDEX idx_ttran_contable_fecha ON TTRAN (cuenta_contable, fecha);
CREATE INDEX idx_ttran_cliente_fecha ON TTRAN (id_cliente, fecha);
CREATE INDEX idx_ttran_fecha ON TTRAN (fecha);
CREATE INDEX idx_ttran_created_at ON TTRAN (created_at);

-- TABLA: CIFXF
CREATE TABLE CIFXF (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cifxf_pk PRIMARY KEY (id)
);

CREATE INDEX idx_cifxf_created_at ON CIFXF (created_at);

-- TABLA: CNTRLCNT
CREATE TABLE CNTRLCNT (
    codigo_banco VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlcnt_pk PRIMARY KEY (codigo_banco)
);

CREATE INDEX idx_cntrlcnt_created_at ON CNTRLCNT (created_at);

-- TABLA: CNTRLBRN
CREATE TABLE CNTRLBRN (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlbrn_pk PRIMARY KEY (codigo_banco, codigo_sucursal)
);

CREATE INDEX idx_cntrlbrn_created_at ON CNTRLBRN (created_at);

-- TABLA: CNTRLNUM
CREATE TABLE CNTRLNUM (
    codigo_aplicacion VARCHAR(20) NOT NULL,
    tipo_cuenta VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlnum_pk PRIMARY KEY (codigo_aplicacion, tipo_cuenta)
);

CREATE INDEX idx_cntrlnum_created_at ON CNTRLNUM (created_at);

-- TABLA: CNTRLTAX
CREATE TABLE CNTRLTAX (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_impuesto VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INTEGER,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrltax_pk PRIMARY KEY (codigo_banco, codigo_impuesto)
);

CREATE INDEX idx_cntrltax_created_at ON CNTRLTAX (created_at);

-- ============================================================================
-- MODULO 2: CLIENTES (5 tablas)
-- ============================================================================

-- TABLA: CUMST
CREATE TABLE CUMST (
    id_cliente VARCHAR(30) NOT NULL,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cumst_pk PRIMARY KEY (id_cliente)
);

CREATE INDEX idx_cumst_created_at ON CUMST (created_at);

-- TABLA: CUMAD
CREATE TABLE CUMAD (
    id_cliente_operacion VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cumad_pk PRIMARY KEY (id_cliente_operacion, tipo_registro, secuencia),
    FOREIGN KEY (id_cliente_operacion) REFERENCES CUMST(id_cliente)
);

CREATE INDEX idx_cumad_created_at ON CUMAD (created_at);

-- TABLA: CUMPR
CREATE TABLE CUMPR (
    palabra VARCHAR(50) NOT NULL,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cumpr_pk PRIMARY KEY (palabra)
);

CREATE INDEX idx_cumpr_created_at ON CUMPR (created_at);

-- TABLA: CUMSD
CREATE TABLE CUMSD (
    id_cliente VARCHAR(30) NOT NULL,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cumsd_pk PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES CUMST(id_cliente)
);

CREATE INDEX idx_cumsd_created_at ON CUMSD (created_at);

-- TABLA: SPINS
CREATE TABLE SPINS (
    tipo_informacion VARCHAR(50) NOT NULL,
    cuenta_o_cliente VARCHAR(50) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_spins_pk PRIMARY KEY (tipo_informacion, cuenta_o_cliente, secuencia)
);

CREATE INDEX idx_spins_created_at ON SPINS (created_at);

-- ============================================================================
-- MODULO 3: CUENTAS DE DETALLE/CHEQUERAS (18 tablas)
-- ============================================================================

-- TABLA: ACMST
CREATE TABLE ACMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_acmst_pk PRIMARY KEY (id)
);

CREATE INDEX idx_acmst_created_at ON ACMST (created_at);

-- TABLA: STPMT
CREATE TABLE STPMT (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    secuencia INTEGER NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_stpmt_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, secuencia)
);

CREATE INDEX idx_stpmt_created_at ON STPMT (created_at);

-- TABLA: UNCOL
CREATE TABLE UNCOL (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_uncol_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
);

CREATE INDEX idx_uncol_created_at ON UNCOL (created_at);

-- TABLA: PBTRN
CREATE TABLE PBTRN (
    numero_cuenta VARCHAR(24) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_pbtrn_pk PRIMARY KEY (numero_cuenta, fecha, hora)
);

CREATE INDEX idx_pbtrn_fecha ON PBTRN (fecha);
CREATE INDEX idx_pbtrn_created_at ON PBTRN (created_at);

-- TABLA: OFMST
CREATE TABLE OFMST (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    numero_cheque VARCHAR(30) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ofmst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cheque)
);

CREATE INDEX idx_ofmst_created_at ON OFMST (created_at);

-- TABLA: RCLNB
CREATE TABLE RCLNB (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    fecha DATE NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_rclnb_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, fecha)
);

CREATE INDEX idx_rclnb_fecha ON RCLNB (fecha);
CREATE INDEX idx_rclnb_created_at ON RCLNB (created_at);

-- TABLA: TLMST
CREATE TABLE TLMST (
    codigo_de_cajero VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_tlmst_pk PRIMARY KEY (codigo_de_cajero, codigo_moneda)
);

CREATE INDEX idx_tlmst_created_at ON TLMST (created_at);

-- TABLA: TDRCR
CREATE TABLE TDRCR (
    codigo_de_transaccion VARCHAR(20) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_tdrcr_pk PRIMARY KEY (codigo_de_transaccion)
);

CREATE INDEX idx_tdrcr_created_at ON TDRCR (created_at);

-- TABLA: AUDIT
CREATE TABLE AUDIT (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_cajero VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    referencia VARCHAR(50) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_audit_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_cajero, codigo_moneda, referencia)
);

CREATE INDEX idx_audit_created_at ON AUDIT (created_at);

-- TABLA: CHMST
CREATE TABLE CHMST (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    cheque_inicial VARCHAR(50) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_chmst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_cuenta, cheque_inicial)
);

CREATE INDEX idx_chmst_created_at ON CHMST (created_at);

-- TABLA: CHPER
CREATE TABLE CHPER (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_chper_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
);

CREATE INDEX idx_chper_created_at ON CHPER (created_at);

-- TABLA: CHSTS
CREATE TABLE CHSTS (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_chsts_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta)
);

CREATE INDEX idx_chsts_created_at ON CHSTS (created_at);

-- TABLA: DEVOL
CREATE TABLE DEVOL (
    numero_cuenta VARCHAR(24) NOT NULL,
    numero_cheque VARCHAR(30) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_devol_pk PRIMARY KEY (numero_cuenta, numero_cheque)
);

CREATE INDEX idx_devol_created_at ON DEVOL (created_at);

-- TABLA: CMRIN
CREATE TABLE CMRIN (
    codigo_banco VARCHAR(20) NOT NULL,
    sucursal_moneda VARCHAR(50) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    monto DECIMAL(18,2) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cmrin_pk PRIMARY KEY (codigo_banco, sucursal_moneda, numero_cuenta, monto)
);

CREATE INDEX idx_cmrin_created_at ON CMRIN (created_at);

-- TABLA: OVDRF
CREATE TABLE OVDRF (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ovdrf_pk PRIMARY KEY (id)
);

CREATE INDEX idx_ovdrf_created_at ON OVDRF (created_at);

-- TABLA: CNTRLMSG
CREATE TABLE CNTRLMSG (
    codigo_banco VARCHAR(20) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlmsg_pk PRIMARY KEY (codigo_banco)
);

CREATE INDEX idx_cntrlmsg_created_at ON CNTRLMSG (created_at);

-- TABLA: CNTRLRTE
CREATE TABLE CNTRLRTE (
    codigo_banco VARCHAR(20) NOT NULL,
    tipo_producto VARCHAR(20) NOT NULL,
    codigo_tabla VARCHAR(20) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlrte_pk PRIMARY KEY (codigo_banco, tipo_producto, codigo_tabla)
);

CREATE INDEX idx_cntrlrte_created_at ON CNTRLRTE (created_at);

-- TABLA: CNTRLDEV
CREATE TABLE CNTRLDEV (
    codigo_causal VARCHAR(20) NOT NULL,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrldev_pk PRIMARY KEY (codigo_causal)
);

CREATE INDEX idx_cntrldev_created_at ON CNTRLDEV (created_at);

-- ============================================================================
-- MODULO 4: CONTRATOS/CERTIFICADOS/GIROS/VALORES AL COBRO (9 tablas)
-- ============================================================================

-- TABLA: DEALS
CREATE TABLE DEALS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_deals_pk PRIMARY KEY (id)
);

CREATE INDEX idx_deals_created_at ON DEALS (created_at);

-- TABLA: DLPMT
CREATE TABLE DLPMT (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_prestamo VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dlpmt_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, fecha, tipo_registro)
);

CREATE INDEX idx_dlpmt_fecha ON DLPMT (fecha);
CREATE INDEX idx_dlpmt_created_at ON DLPMT (created_at);

-- TABLA: DLDRF
CREATE TABLE DLDRF (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_prestamo VARCHAR(30) NOT NULL,
    identificacion VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(30) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dldrf_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, identificacion, numero_documento)
);

CREATE INDEX idx_dldrf_created_at ON DLDRF (created_at);

-- TABLA: DLSDE
CREATE TABLE DLSDE (
    numero_prestamo VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    secuencia INTEGER NOT NULL,
    codigo_deduccion VARCHAR(20) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dlsde_pk PRIMARY KEY (numero_prestamo, fecha, tipo_registro, secuencia, codigo_deduccion)
);

CREATE INDEX idx_dlsde_fecha ON DLSDE (fecha);
CREATE INDEX idx_dlsde_created_at ON DLSDE (created_at);

-- TABLA: DLCLP
CREATE TABLE DLCLP (
    id_cliente VARCHAR(30) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    referencia VARCHAR(50) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dlclp_pk PRIMARY KEY (id_cliente, numero_cuenta, referencia)
);

CREATE INDEX idx_dlclp_created_at ON DLCLP (created_at);

-- TABLA: DDCPN
CREATE TABLE DDCPN (
    numero_prestamo VARCHAR(30) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ddcpn_pk PRIMARY KEY (numero_prestamo)
);

CREATE INDEX idx_ddcpn_created_at ON DDCPN (created_at);

-- TABLA: DLITP
CREATE TABLE DLITP (
    numero_prestamo VARCHAR(30) NOT NULL,
    codigo_deduccion VARCHAR(20) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dlitp_pk PRIMARY KEY (numero_prestamo, codigo_deduccion)
);

CREATE INDEX idx_dlitp_created_at ON DLITP (created_at);

-- TABLA: CDRTE
CREATE TABLE CDRTE (
    numero_tabla VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cdrte_pk PRIMARY KEY (numero_tabla, fecha, codigo_moneda)
);

CREATE INDEX idx_cdrte_fecha ON CDRTE (fecha);
CREATE INDEX idx_cdrte_created_at ON CDRTE (created_at);

-- TABLA: CNTRLDLS
CREATE TABLE CNTRLDLS (
    codigo_banco VARCHAR(20) NOT NULL,
    numero_tabla VARCHAR(30) NOT NULL,
    tipo_producto VARCHAR(20) NOT NULL,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INTEGER,
    dias_mora INTEGER,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrldls_pk PRIMARY KEY (codigo_banco, numero_tabla, tipo_producto)
);

CREATE INDEX idx_cntrldls_created_at ON CNTRLDLS (created_at);

-- ============================================================================
-- MODULO 5: CARTAS DE CRÉDITO (10 tablas)
-- ============================================================================

-- TABLA: LCMST
CREATE TABLE LCMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcmst_pk PRIMARY KEY (id)
);

CREATE INDEX idx_lcmst_created_at ON LCMST (created_at);

-- TABLA: LCDOC
CREATE TABLE LCDOC (
    numero_carta_credito VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_documento VARCHAR(20) NOT NULL,
    numero_linea VARCHAR(30) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcdoc_pk PRIMARY KEY (numero_carta_credito, tipo_registro, codigo_banco, codigo_documento, numero_linea)
);

CREATE INDEX idx_lcdoc_created_at ON LCDOC (created_at);

-- TABLA: LCFIN
CREATE TABLE LCFIN (
    nivel INTEGER NOT NULL,
    codigo_documento VARCHAR(20) NOT NULL,
    secuencia_de_texto VARCHAR(50) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcfin_pk PRIMARY KEY (nivel, codigo_documento, secuencia_de_texto)
);

CREATE INDEX idx_lcfin_created_at ON LCFIN (created_at);

-- TABLA: LCFMT
CREATE TABLE LCFMT (
    codigo_documento VARCHAR(20) NOT NULL,
    secuencia_de_texto VARCHAR(50) NOT NULL,
    numero_linea VARCHAR(30) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcfmt_pk PRIMARY KEY (codigo_documento, secuencia_de_texto, numero_linea)
);

CREATE INDEX idx_lcfmt_created_at ON LCFMT (created_at);

-- TABLA: LCADM
CREATE TABLE LCADM (
    numero_carta_credito VARCHAR(30) NOT NULL,
    numero_enmienda VARCHAR(30) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcadm_pk PRIMARY KEY (numero_carta_credito, numero_enmienda)
);

CREATE INDEX idx_lcadm_created_at ON LCADM (created_at);

-- TABLA: LCCOV
CREATE TABLE LCCOV (
    numero_carta_credito VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lccov_pk PRIMARY KEY (numero_carta_credito, secuencia)
);

CREATE INDEX idx_lccov_created_at ON LCCOV (created_at);

-- TABLA: LCDIN
CREATE TABLE LCDIN (
    numero_carta_credito VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcdin_pk PRIMARY KEY (numero_carta_credito, secuencia)
);

CREATE INDEX idx_lcdin_created_at ON LCDIN (created_at);

-- TABLA: LCSTA
CREATE TABLE LCSTA (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcsta_pk PRIMARY KEY (id)
);

CREATE INDEX idx_lcsta_created_at ON LCSTA (created_at);

-- TABLA: CNTRLLCP
CREATE TABLE CNTRLLCP (
    codigo_banco VARCHAR(20) NOT NULL,
    lcrparm VARCHAR(20) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrllcp_pk PRIMARY KEY (codigo_banco, lcrparm)
);

CREATE INDEX idx_cntrllcp_created_at ON CNTRLLCP (created_at);

-- TABLA: CNTRLRLC
CREATE TABLE CNTRLRLC (
    codigo_banco VARCHAR(20) NOT NULL,
    tipo_producto VARCHAR(20) NOT NULL,
    numero_tabla VARCHAR(30) NOT NULL,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlrlc_pk PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
);

CREATE INDEX idx_cntrlrlc_created_at ON CNTRLRLC (created_at);

-- ============================================================================
-- MODULO 6: COBRANZAS (4 tablas)
-- ============================================================================

-- TABLA: DCMST
CREATE TABLE DCMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dcmst_pk PRIMARY KEY (id)
);

CREATE INDEX idx_dcmst_created_at ON DCMST (created_at);

-- TABLA: APPRV
CREATE TABLE APPRV (
    numero_carta_credito VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_apprv_pk PRIMARY KEY (numero_carta_credito, tipo_registro)
);

CREATE INDEX idx_apprv_created_at ON APPRV (created_at);

-- TABLA: LCFEE
CREATE TABLE LCFEE (
    numero_carta_credito VARCHAR(30) NOT NULL,
    codigo_de_comision VARCHAR(20) NOT NULL,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lcfee_pk PRIMARY KEY (numero_carta_credito, codigo_de_comision)
);

CREATE INDEX idx_lcfee_created_at ON LCFEE (created_at);

-- TABLA: CNTRLRCO
CREATE TABLE CNTRLRCO (
    codigo_banco VARCHAR(20) NOT NULL,
    tipo_producto VARCHAR(20) NOT NULL,
    numero_tabla VARCHAR(30) NOT NULL,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlrco_pk PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
);

CREATE INDEX idx_cntrlrco_created_at ON CNTRLRCO (created_at);

-- ============================================================================
-- MODULO 7: CONTABILIDAD (9 tablas)
-- ============================================================================

-- TABLA: GLMST
CREATE TABLE GLMST (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_glmst_pk PRIMARY KEY (codigo_banco, codigo_moneda, cuenta_contable)
);

CREATE INDEX idx_glmst_created_at ON GLMST (created_at);

-- TABLA: INPUT
CREATE TABLE INPUT (
    numero_del_lote VARCHAR(30) NOT NULL,
    secuencia_dentro_del_lote VARCHAR(50) NOT NULL,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_input_pk PRIMARY KEY (numero_del_lote, secuencia_dentro_del_lote)
);

CREATE INDEX idx_input_created_at ON INPUT (created_at);

-- TABLA: GLBLN
CREATE TABLE GLBLN (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    cuenta_contable VARCHAR(24) NOT NULL,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_glbln_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
);

CREATE INDEX idx_glbln_created_at ON GLBLN (created_at);

-- TABLA: GLBSE
CREATE TABLE GLBSE (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_glbse_pk PRIMARY KEY (id)
);

CREATE INDEX idx_glbse_created_at ON GLBSE (created_at);

-- TABLA: GLFIN
CREATE TABLE GLFIN (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_glfin_pk PRIMARY KEY (id)
);

CREATE INDEX idx_glfin_created_at ON GLFIN (created_at);

-- TABLA: CCDSC
CREATE TABLE CCDSC (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ccdsc_pk PRIMARY KEY (id)
);

CREATE INDEX idx_ccdsc_created_at ON CCDSC (created_at);

-- TABLA: INPT2
CREATE TABLE INPT2 (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_inpt2_pk PRIMARY KEY (id)
);

CREATE INDEX idx_inpt2_created_at ON INPT2 (created_at);

-- TABLA: NXINP
CREATE TABLE NXINP (
    numero_batch VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_nxinp_pk PRIMARY KEY (numero_batch, secuencia)
);

CREATE INDEX idx_nxinp_created_at ON NXINP (created_at);

-- TABLA: BUMST
CREATE TABLE BUMST (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_presupuesto VARCHAR(30) NOT NULL,
    centro_costo VARCHAR(50) NOT NULL,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_bumst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_presupuesto, centro_costo)
);

CREATE INDEX idx_bumst_created_at ON BUMST (created_at);

-- ============================================================================
-- MODULO 8: GARANTÍAS (2 tablas)
-- ============================================================================

-- TABLA: ROCOL
CREATE TABLE ROCOL (
    codigo_banco VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    numero_garantia VARCHAR(30) NOT NULL,
    tipo_garantia VARCHAR(20),
    valor_garantia DECIMAL(18,2),
    fecha_avaluo DATE,
    fecha_vencimiento DATE,
    estado_garantia VARCHAR(20),
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_rocol_pk PRIMARY KEY (codigo_banco, id_cliente, numero_garantia)
);

CREATE INDEX idx_rocol_created_at ON ROCOL (created_at);

-- TABLA: RCOLL
CREATE TABLE RCOLL (
    codigo_banco VARCHAR(20) NOT NULL,
    cuenta_a_garantizar VARCHAR(50) NOT NULL,
    cuenta_que_garantiza VARCHAR(50) NOT NULL,
    tipo_garantia VARCHAR(20),
    valor_garantia DECIMAL(18,2),
    fecha_avaluo DATE,
    fecha_vencimiento DATE,
    estado_garantia VARCHAR(20),
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_rcoll_pk PRIMARY KEY (codigo_banco, cuenta_a_garantizar, cuenta_que_garantiza)
);

CREATE INDEX idx_rcoll_created_at ON RCOLL (created_at);

-- ============================================================================
-- MODULO 9: LINEAS DE CRÉDITO (1 tabla)
-- ============================================================================

-- TABLA: LNECR
CREATE TABLE LNECR (
    id_cliente VARCHAR(30) NOT NULL,
    numero_linea VARCHAR(30) NOT NULL,
    fecha_aprobacion DATE,
    fecha_vencimiento DATE,
    monto_aprobado DECIMAL(18,2),
    monto_utilizado DECIMAL(18,2),
    monto_disponible DECIMAL(18,2),
    estado_linea VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_lnecr_pk PRIMARY KEY (id_cliente, numero_linea)
);

CREATE INDEX idx_lnecr_created_at ON LNECR (created_at);

-- ============================================================================
-- MODULO 10: ACTIVOS FIJOS (4 tablas)
-- ============================================================================

-- TABLA: FIXMS
CREATE TABLE FIXMS (
    numero_activo VARCHAR(30) NOT NULL,
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INTEGER,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_fixms_pk PRIMARY KEY (numero_activo)
);

CREATE INDEX idx_fixms_created_at ON FIXMS (created_at);

-- TABLA: CLSMS
CREATE TABLE CLSMS (
    codigo_clase VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INTEGER,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_clsms_pk PRIMARY KEY (codigo_clase)
);

CREATE INDEX idx_clsms_created_at ON CLSMS (created_at);

-- TABLA: LOCMS
CREATE TABLE LOCMS (
    numero_localizacion VARCHAR(30) NOT NULL,
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INTEGER,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_locms_pk PRIMARY KEY (numero_localizacion)
);

CREATE INDEX idx_locms_created_at ON LOCMS (created_at);

-- TABLA: CNTRLFIX
CREATE TABLE CNTRLFIX (
    codigo_banco VARCHAR(20) NOT NULL,
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INTEGER,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlfix_pk PRIMARY KEY (codigo_banco)
);

CREATE INDEX idx_cntrlfix_created_at ON CNTRLFIX (created_at);

-- ============================================================================
-- MODULO 11: PROVEEDORES Y CUENTAS POR PAGAR (7 tablas)
-- ============================================================================

-- TABLA: BAVEN
CREATE TABLE BAVEN (
    numero_proveedor VARCHAR(30) NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_baven_pk PRIMARY KEY (numero_proveedor)
);

CREATE INDEX idx_baven_created_at ON BAVEN (created_at);

-- TABLA: BAPRC
CREATE TABLE BAPRC (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    origen_cuenta VARCHAR(20) NOT NULL,
    tipo_cuenta VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_baprc_pk PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
);

CREATE INDEX idx_baprc_created_at ON BAPRC (created_at);

-- TABLA: BAMOR
CREATE TABLE BAMOR (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_sucursal VARCHAR(20) NOT NULL,
    origen_cuenta VARCHAR(20) NOT NULL,
    tipo_cuenta VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_bamor_pk PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
);

CREATE INDEX idx_bamor_created_at ON BAMOR (created_at);

-- TABLA: BAINP
CREATE TABLE BAINP (
    numero_batch VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_bainp_pk PRIMARY KEY (numero_batch, secuencia)
);

CREATE INDEX idx_bainp_created_at ON BAINP (created_at);

-- TABLA: BAHIS
CREATE TABLE BAHIS (
    codigo_banco VARCHAR(20) NOT NULL,
    origen_cuenta VARCHAR(20) NOT NULL,
    tipo_cuenta VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_bahis_pk PRIMARY KEY (codigo_banco, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, fecha)
);

CREATE INDEX idx_bahis_fecha ON BAHIS (fecha);
CREATE INDEX idx_bahis_created_at ON BAHIS (created_at);

-- TABLA: CNTRLBAF
CREATE TABLE CNTRLBAF (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlbaf_pk PRIMARY KEY (codigo_banco, codigo_moneda)
);

CREATE INDEX idx_cntrlbaf_created_at ON CNTRLBAF (created_at);

-- TABLA: CNTRLBAP
CREATE TABLE CNTRLBAP (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlbap_pk PRIMARY KEY (codigo_banco, codigo_moneda)
);

CREATE INDEX idx_cntrlbap_created_at ON CNTRLBAP (created_at);

-- ============================================================================
-- MODULO 12: PAGOS Y TRANSFERENCIAS (6 tablas)
-- ============================================================================

-- TABLA: FIWRT
CREATE TABLE FIWRT (
    codigo_banco VARCHAR(20) NOT NULL,
    numero_transferencia VARCHAR(30) NOT NULL,
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_fiwrt_pk PRIMARY KEY (codigo_banco, numero_transferencia)
);

CREATE INDEX idx_fiwrt_created_at ON FIWRT (created_at);

-- TABLA: POFED
CREATE TABLE POFED (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_pofed_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
);

CREATE INDEX idx_pofed_created_at ON POFED (created_at);

-- TABLA: POSWF
CREATE TABLE POSWF (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    monto DECIMAL(18,2) NOT NULL,
    fecha_operacion DATE,
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_poswf_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia, monto)
);

CREATE INDEX idx_poswf_created_at ON POSWF (created_at);

-- TABLA: POTLX
CREATE TABLE POTLX (
    codigo_banco VARCHAR(20) NOT NULL,
    codigo_moneda VARCHAR(20) NOT NULL,
    id_cliente VARCHAR(30) NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    numero_cuenta VARCHAR(24) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_potlx_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
);

CREATE INDEX idx_potlx_created_at ON POTLX (created_at);

-- TABLA: SWITF
CREATE TABLE SWITF (
    codigo_banco VARCHAR(20) NOT NULL,
    numero_referencia VARCHAR(30) NOT NULL,
    formato_swift VARCHAR(50) NOT NULL,
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_switf_pk PRIMARY KEY (codigo_banco, numero_referencia, formato_swift)
);

CREATE INDEX idx_switf_created_at ON SWITF (created_at);

-- TABLA: CNTRLPRF
CREATE TABLE CNTRLPRF (
    codigo_banco VARCHAR(20) NOT NULL,
    parametro VARCHAR(20) NOT NULL,
    codigo_tabla VARCHAR(20) NOT NULL,
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_cntrlprf_pk PRIMARY KEY (codigo_banco, parametro, codigo_tabla)
);

CREATE INDEX idx_cntrlprf_created_at ON CNTRLPRF (created_at);

-- ============================================================================
-- MODULO 13: PROPUESTA DE CRÉDITO (9 tablas)
-- ============================================================================

-- TABLA: PLPCR
CREATE TABLE PLPCR (
    numero_propuesta VARCHAR(30) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_plpcr_pk PRIMARY KEY (numero_propuesta)
);

CREATE INDEX idx_plpcr_created_at ON PLPCR (created_at);

-- TABLA: PLPRD
CREATE TABLE PLPRD (
    numero_propuesta VARCHAR(30) NOT NULL,
    codigo_producto VARCHAR(20) NOT NULL,
    tipo_producto VARCHAR(20) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_plprd_pk PRIMARY KEY (numero_propuesta, codigo_producto, tipo_producto)
);

CREATE INDEX idx_plprd_created_at ON PLPRD (created_at);

-- TABLA: PLGRT
CREATE TABLE PLGRT (
    numero_propuesta VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_plgrt_pk PRIMARY KEY (numero_propuesta, secuencia)
);

CREATE INDEX idx_plgrt_created_at ON PLGRT (created_at);

-- TABLA: DPMST
CREATE TABLE DPMST (
    id_cliente VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dpmst_pk PRIMARY KEY (id_cliente, secuencia)
);

CREATE INDEX idx_dpmst_created_at ON DPMST (created_at);

-- TABLA: DPDTL
CREATE TABLE DPDTL (
    id_cliente VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_registro VARCHAR(20) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dpdtl_pk PRIMARY KEY (id_cliente, secuencia, tipo_registro)
);

CREATE INDEX idx_dpdtl_created_at ON DPDTL (created_at);

-- TABLA: IFMST
CREATE TABLE IFMST (
    id_cliente VARCHAR(30) NOT NULL,
    anio INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    formato_balance VARCHAR(50) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ifmst_pk PRIMARY KEY (id_cliente, anio, mes, formato_balance)
);

CREATE INDEX idx_ifmst_created_at ON IFMST (created_at);

-- TABLA: IFDTL
CREATE TABLE IFDTL (
    id_cliente VARCHAR(30) NOT NULL,
    anio INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    formato_balance VARCHAR(50) NOT NULL,
    codigo_linea VARCHAR(20) NOT NULL,
    codigo_cuenta VARCHAR(20) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ifdtl_pk PRIMARY KEY (id_cliente, anio, mes, formato_balance, codigo_linea, codigo_cuenta)
);

CREATE INDEX idx_ifdtl_created_at ON IFDTL (created_at);

-- TABLA: DPGLN
CREATE TABLE DPGLN (
    tipo_balance VARCHAR(20) NOT NULL,
    codigo_cuenta VARCHAR(20) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dpgln_pk PRIMARY KEY (tipo_balance, codigo_cuenta)
);

CREATE INDEX idx_dpgln_created_at ON DPGLN (created_at);

-- TABLA: LIMST
CREATE TABLE LIMST (
    id_cliente VARCHAR(30) NOT NULL,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INTEGER,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_limst_pk PRIMARY KEY (id_cliente)
);

CREATE INDEX idx_limst_created_at ON LIMST (created_at);

-- ============================================================================
-- MODULO 14: MANEJO DE DOCUMENTOS (2 tablas)
-- ============================================================================

-- TABLA: DIMST
CREATE TABLE DIMST (
    tipo_cuenta VARCHAR(20) NOT NULL,
    numero_tabla VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_documento VARCHAR(20),
    descripcion_documento VARCHAR(120),
    obligatorio BOOLEAN,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_dimst_pk PRIMARY KEY (tipo_cuenta, numero_tabla, secuencia)
);

CREATE INDEX idx_dimst_created_at ON DIMST (created_at);

-- TABLA: DITBL
CREATE TABLE DITBL (
    numero_tabla VARCHAR(30) NOT NULL,
    secuencia INTEGER NOT NULL,
    tipo_documento VARCHAR(20),
    descripcion_documento VARCHAR(120),
    obligatorio BOOLEAN,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_ditbl_pk PRIMARY KEY (numero_tabla, secuencia)
);

CREATE INDEX idx_ditbl_created_at ON DITBL (created_at);

-- ============================================================================
-- MODULO 15: SEGURIDAD (1 tabla)
-- ============================================================================

-- TABLA: USERS
CREATE TABLE USERS (
    codigo_usuario VARCHAR(20) NOT NULL,
    menu VARCHAR(20) NOT NULL,
    opcion VARCHAR(20) NOT NULL,
    rol VARCHAR(20),
    nivel_autorizacion INTEGER,
    permite_consulta BOOLEAN,
    permite_creacion BOOLEAN,
    permite_actualizacion BOOLEAN,
    permite_aprobacion BOOLEAN,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INTEGER,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT idx_users_pk PRIMARY KEY (codigo_usuario, menu, opcion)
);

CREATE INDEX idx_users_created_at ON USERS (created_at);

-- ============================================================================
-- FIN DEL SCRIPT DDL
-- ============================================================================
-- Total de tablas: 114
-- Total de módulos: 15
-- Ejecutado en: DB2 IBM i
-- ============================================================================
