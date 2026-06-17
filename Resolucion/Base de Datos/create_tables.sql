-- ============================================================================
-- SCRIPT SQL DDL - BANCO - DB2 IBM i
-- 114 Tablas organizadas en 15 módulos funcionales
-- Generado automáticamente desde estructura_bd.md
-- ============================================================================

-- ============================================================================
-- MODULO 1: ARCHIVOS COMUNES (27 tablas)
-- ============================================================================

-- TABLA: CNOFT
-- ============================================================================
-- Nombre de la Tabla: CNOFT
-- DESCRIPCIÓN: Tabla de datos para CNOFT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNOFT (
    codigo_tabla VARCHAR(20) NOT NULL FOR COLUMN CODTAB,
    idioma VARCHAR(20) NOT NULL FOR COLUMN IDIOMA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cnoft_pk PRIMARY KEY (codigo_tabla, idioma)
) RCDFMT CNOFT;
COMMENT ON TABLE CNOFT IS 'Tabla de datos para CNOFT en el módulo bancario.';
LABEL ON TABLE CNOFT IS 'CNOFT';

COMMENT ON COLUMN CNOFT.codigo_tabla IS 'Código identificador de la tabla.';
LABEL ON COLUMN CNOFT.codigo_tabla IS 'Codigo Tabla';
LABEL ON COLUMN CNOFT.codigo_tabla TEXT IS 'Código identificador de la tabla.';
COMMENT ON COLUMN CNOFT.idioma IS 'Idioma del texto o descripción.';
LABEL ON COLUMN CNOFT.idioma IS 'Idioma';
LABEL ON COLUMN CNOFT.idioma TEXT IS 'Idioma del texto o descripción.';
COMMENT ON COLUMN CNOFT.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNOFT.descripcion IS 'Descripcion';
LABEL ON COLUMN CNOFT.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNOFT.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNOFT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNOFT.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNOFT.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNOFT.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNOFT.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNOFT.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNOFT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNOFT.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNOFT.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNOFT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNOFT.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNOFT.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNOFT.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNOFT.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNOFT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNOFT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNOFT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNOFT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNOFT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNOFT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNOFT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNOFT.version_registro IS 'Version Registro';
LABEL ON COLUMN CNOFT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNOFT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNOFT.observaciones IS 'Observaciones';
LABEL ON COLUMN CNOFT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNOFT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNOFT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNOFT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNOFT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNOFT.created_at IS 'Created At';
LABEL ON COLUMN CNOFT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNOFT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNOFT.updated_at IS 'Updated At';
LABEL ON COLUMN CNOFT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cnoft_created_at ON CNOFT (created_at);

-- TABLA: CNOFC
-- ============================================================================
-- Nombre de la Tabla: CNOFC
-- DESCRIPCIÓN: Tabla de datos para CNOFC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNOFC (
    codigo_tabla VARCHAR(20) NOT NULL FOR COLUMN CODTAB,
    codigo_registro VARCHAR(20) NOT NULL FOR COLUMN CODREG,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cnofc_pk PRIMARY KEY (codigo_tabla, codigo_registro)
) RCDFMT CNOFC;
COMMENT ON TABLE CNOFC IS 'Tabla de datos para CNOFC en el módulo bancario.';
LABEL ON TABLE CNOFC IS 'CNOFC';

COMMENT ON COLUMN CNOFC.codigo_tabla IS 'Código identificador de la tabla.';
LABEL ON COLUMN CNOFC.codigo_tabla IS 'Codigo Tabla';
LABEL ON COLUMN CNOFC.codigo_tabla TEXT IS 'Código identificador de la tabla.';
COMMENT ON COLUMN CNOFC.codigo_registro IS 'Código identificador del registro.';
LABEL ON COLUMN CNOFC.codigo_registro IS 'Codigo Registro';
LABEL ON COLUMN CNOFC.codigo_registro TEXT IS 'Código identificador del registro.';
COMMENT ON COLUMN CNOFC.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNOFC.descripcion IS 'Descripcion';
LABEL ON COLUMN CNOFC.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNOFC.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNOFC.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNOFC.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNOFC.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNOFC.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNOFC.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNOFC.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNOFC.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNOFC.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNOFC.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNOFC.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNOFC.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNOFC.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNOFC.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNOFC.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNOFC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNOFC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNOFC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNOFC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNOFC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNOFC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNOFC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNOFC.version_registro IS 'Version Registro';
LABEL ON COLUMN CNOFC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNOFC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNOFC.observaciones IS 'Observaciones';
LABEL ON COLUMN CNOFC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNOFC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNOFC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNOFC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNOFC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNOFC.created_at IS 'Created At';
LABEL ON COLUMN CNOFC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNOFC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNOFC.updated_at IS 'Updated At';
LABEL ON COLUMN CNOFC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cnofc_created_at ON CNOFC (created_at);

-- TABLA: MLNCT
-- ============================================================================
-- Nombre de la Tabla: MLNCT
-- DESCRIPCIÓN: Tabla de datos para MLNCT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE MLNCT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_de_notificacion VARCHAR(20) NOT NULL FOR COLUMN CODDENOT,
    nivel INTEGER NOT NULL FOR COLUMN NIVEL,
    idioma VARCHAR(20) NOT NULL FOR COLUMN IDIOMA,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_mlnct_pk PRIMARY KEY (codigo_banco, codigo_de_notificacion, nivel, idioma, secuencia)
) RCDFMT MLNCT;
COMMENT ON TABLE MLNCT IS 'Tabla de datos para MLNCT en el módulo bancario.';
LABEL ON TABLE MLNCT IS 'MLNCT';

COMMENT ON COLUMN MLNCT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN MLNCT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN MLNCT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN MLNCT.codigo_de_notificacion IS 'Código del de notificacion.';
LABEL ON COLUMN MLNCT.codigo_de_notificacion IS 'Codigo De Notificacion';
LABEL ON COLUMN MLNCT.codigo_de_notificacion TEXT IS 'Código del de notificacion.';
COMMENT ON COLUMN MLNCT.nivel IS 'Nivel jerárquico o de detalle.';
LABEL ON COLUMN MLNCT.nivel IS 'Nivel';
LABEL ON COLUMN MLNCT.nivel TEXT IS 'Nivel jerárquico o de detalle.';
COMMENT ON COLUMN MLNCT.idioma IS 'Idioma del texto o descripción.';
LABEL ON COLUMN MLNCT.idioma IS 'Idioma';
LABEL ON COLUMN MLNCT.idioma TEXT IS 'Idioma del texto o descripción.';
COMMENT ON COLUMN MLNCT.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN MLNCT.secuencia IS 'Secuencia';
LABEL ON COLUMN MLNCT.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN MLNCT.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN MLNCT.descripcion IS 'Descripcion';
LABEL ON COLUMN MLNCT.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN MLNCT.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN MLNCT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN MLNCT.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN MLNCT.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN MLNCT.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN MLNCT.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN MLNCT.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN MLNCT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN MLNCT.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN MLNCT.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN MLNCT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN MLNCT.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN MLNCT.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN MLNCT.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN MLNCT.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN MLNCT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN MLNCT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN MLNCT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN MLNCT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN MLNCT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN MLNCT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN MLNCT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN MLNCT.version_registro IS 'Version Registro';
LABEL ON COLUMN MLNCT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN MLNCT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN MLNCT.observaciones IS 'Observaciones';
LABEL ON COLUMN MLNCT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN MLNCT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN MLNCT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN MLNCT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN MLNCT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN MLNCT.created_at IS 'Created At';
LABEL ON COLUMN MLNCT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN MLNCT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN MLNCT.updated_at IS 'Updated At';
LABEL ON COLUMN MLNCT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_mlnct_created_at ON MLNCT (created_at);

-- TABLA: MLNOT
-- ============================================================================
-- Nombre de la Tabla: MLNOT
-- DESCRIPCIÓN: Tabla de datos para MLNOT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE MLNOT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    fecha_proceso DATE NOT NULL FOR COLUMN FECPRO,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    codigo_de_notificacion VARCHAR(20) NOT NULL FOR COLUMN CODDENOT,
    nivel INTEGER NOT NULL FOR COLUMN NIVEL,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_mlnot_pk PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
) RCDFMT MLNOT;
COMMENT ON TABLE MLNOT IS 'Tabla de datos para MLNOT en el módulo bancario.';
LABEL ON TABLE MLNOT IS 'MLNOT';

COMMENT ON COLUMN MLNOT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN MLNOT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN MLNOT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN MLNOT.fecha_proceso IS 'Fecha de proceso relacionada al registro.';
LABEL ON COLUMN MLNOT.fecha_proceso IS 'Fecha Proceso';
LABEL ON COLUMN MLNOT.fecha_proceso TEXT IS 'Fecha de proceso relacionada al registro.';
COMMENT ON COLUMN MLNOT.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN MLNOT.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN MLNOT.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN MLNOT.codigo_de_notificacion IS 'Código del de notificacion.';
LABEL ON COLUMN MLNOT.codigo_de_notificacion IS 'Codigo De Notificacion';
LABEL ON COLUMN MLNOT.codigo_de_notificacion TEXT IS 'Código del de notificacion.';
COMMENT ON COLUMN MLNOT.nivel IS 'Nivel jerárquico o de detalle.';
LABEL ON COLUMN MLNOT.nivel IS 'Nivel';
LABEL ON COLUMN MLNOT.nivel TEXT IS 'Nivel jerárquico o de detalle.';
COMMENT ON COLUMN MLNOT.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN MLNOT.descripcion IS 'Descripcion';
LABEL ON COLUMN MLNOT.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN MLNOT.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN MLNOT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN MLNOT.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN MLNOT.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN MLNOT.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN MLNOT.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN MLNOT.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN MLNOT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN MLNOT.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN MLNOT.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN MLNOT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN MLNOT.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN MLNOT.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN MLNOT.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN MLNOT.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN MLNOT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN MLNOT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN MLNOT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN MLNOT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN MLNOT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN MLNOT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN MLNOT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN MLNOT.version_registro IS 'Version Registro';
LABEL ON COLUMN MLNOT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN MLNOT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN MLNOT.observaciones IS 'Observaciones';
LABEL ON COLUMN MLNOT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN MLNOT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN MLNOT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN MLNOT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN MLNOT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN MLNOT.created_at IS 'Created At';
LABEL ON COLUMN MLNOT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN MLNOT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN MLNOT.updated_at IS 'Updated At';
LABEL ON COLUMN MLNOT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_mlnot_fecha ON MLNOT (fecha_proceso);
CREATE INDEX idx_mlnot_created_at ON MLNOT (created_at);

-- TABLA: HSNOT
-- ============================================================================
-- Nombre de la Tabla: HSNOT
-- DESCRIPCIÓN: Tabla de datos para HSNOT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE HSNOT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    fecha_proceso DATE NOT NULL FOR COLUMN FECPRO,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    codigo_de_notificacion VARCHAR(20) NOT NULL FOR COLUMN CODDENOT,
    nivel INTEGER NOT NULL FOR COLUMN NIVEL,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_hsnot_pk PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
) RCDFMT HSNOT;
COMMENT ON TABLE HSNOT IS 'Tabla de datos para HSNOT en el módulo bancario.';
LABEL ON TABLE HSNOT IS 'HSNOT';

COMMENT ON COLUMN HSNOT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN HSNOT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN HSNOT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN HSNOT.fecha_proceso IS 'Fecha de proceso relacionada al registro.';
LABEL ON COLUMN HSNOT.fecha_proceso IS 'Fecha Proceso';
LABEL ON COLUMN HSNOT.fecha_proceso TEXT IS 'Fecha de proceso relacionada al registro.';
COMMENT ON COLUMN HSNOT.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN HSNOT.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN HSNOT.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN HSNOT.codigo_de_notificacion IS 'Código del de notificacion.';
LABEL ON COLUMN HSNOT.codigo_de_notificacion IS 'Codigo De Notificacion';
LABEL ON COLUMN HSNOT.codigo_de_notificacion TEXT IS 'Código del de notificacion.';
COMMENT ON COLUMN HSNOT.nivel IS 'Nivel jerárquico o de detalle.';
LABEL ON COLUMN HSNOT.nivel IS 'Nivel';
LABEL ON COLUMN HSNOT.nivel TEXT IS 'Nivel jerárquico o de detalle.';
COMMENT ON COLUMN HSNOT.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN HSNOT.descripcion IS 'Descripcion';
LABEL ON COLUMN HSNOT.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN HSNOT.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN HSNOT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN HSNOT.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN HSNOT.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN HSNOT.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN HSNOT.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN HSNOT.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN HSNOT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN HSNOT.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN HSNOT.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN HSNOT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN HSNOT.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN HSNOT.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN HSNOT.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN HSNOT.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN HSNOT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN HSNOT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN HSNOT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN HSNOT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN HSNOT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN HSNOT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN HSNOT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN HSNOT.version_registro IS 'Version Registro';
LABEL ON COLUMN HSNOT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN HSNOT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN HSNOT.observaciones IS 'Observaciones';
LABEL ON COLUMN HSNOT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN HSNOT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN HSNOT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN HSNOT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN HSNOT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN HSNOT.created_at IS 'Created At';
LABEL ON COLUMN HSNOT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN HSNOT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN HSNOT.updated_at IS 'Updated At';
LABEL ON COLUMN HSNOT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_hsnot_fecha ON HSNOT (fecha_proceso);
CREATE INDEX idx_hsnot_created_at ON HSNOT (created_at);

-- TABLA: HEAD
-- ============================================================================
-- Nombre de la Tabla: HEAD
-- DESCRIPCIÓN: Tabla de datos para HEAD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE HEAD (
    nombre_printer_file VARCHAR(50) NOT NULL FOR COLUMN NOMPRIFIL,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_head_pk PRIMARY KEY (nombre_printer_file, secuencia)
) RCDFMT HEAD;
COMMENT ON TABLE HEAD IS 'Tabla de datos para HEAD en el módulo bancario.';
LABEL ON TABLE HEAD IS 'HEAD';

COMMENT ON COLUMN HEAD.nombre_printer_file IS 'Nombre del archivo de impresión.';
LABEL ON COLUMN HEAD.nombre_printer_file IS 'Nombre Printer File';
LABEL ON COLUMN HEAD.nombre_printer_file TEXT IS 'Nombre del archivo de impresión.';
COMMENT ON COLUMN HEAD.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN HEAD.secuencia IS 'Secuencia';
LABEL ON COLUMN HEAD.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN HEAD.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN HEAD.descripcion IS 'Descripcion';
LABEL ON COLUMN HEAD.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN HEAD.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN HEAD.valor_texto IS 'Valor Texto';
LABEL ON COLUMN HEAD.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN HEAD.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN HEAD.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN HEAD.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN HEAD.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN HEAD.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN HEAD.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN HEAD.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN HEAD.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN HEAD.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN HEAD.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN HEAD.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN HEAD.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN HEAD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN HEAD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN HEAD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN HEAD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN HEAD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN HEAD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN HEAD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN HEAD.version_registro IS 'Version Registro';
LABEL ON COLUMN HEAD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN HEAD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN HEAD.observaciones IS 'Observaciones';
LABEL ON COLUMN HEAD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN HEAD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN HEAD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN HEAD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN HEAD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN HEAD.created_at IS 'Created At';
LABEL ON COLUMN HEAD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN HEAD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN HEAD.updated_at IS 'Updated At';
LABEL ON COLUMN HEAD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_head_created_at ON HEAD (created_at);

-- TABLA: MSSGS
-- ============================================================================
-- Nombre de la Tabla: MSSGS
-- DESCRIPCIÓN: Tabla de datos para MSSGS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE MSSGS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_mssgs_pk PRIMARY KEY (id)
) RCDFMT MSSGS;
COMMENT ON TABLE MSSGS IS 'Tabla de datos para MSSGS en el módulo bancario.';
LABEL ON TABLE MSSGS IS 'MSSGS';

COMMENT ON COLUMN MSSGS.id IS 'Identificador único del registro.';
LABEL ON COLUMN MSSGS.id IS 'Id';
LABEL ON COLUMN MSSGS.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN MSSGS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN MSSGS.descripcion IS 'Descripcion';
LABEL ON COLUMN MSSGS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN MSSGS.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN MSSGS.valor_texto IS 'Valor Texto';
LABEL ON COLUMN MSSGS.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN MSSGS.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN MSSGS.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN MSSGS.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN MSSGS.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN MSSGS.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN MSSGS.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN MSSGS.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN MSSGS.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN MSSGS.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN MSSGS.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN MSSGS.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN MSSGS.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN MSSGS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN MSSGS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN MSSGS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN MSSGS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN MSSGS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN MSSGS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN MSSGS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN MSSGS.version_registro IS 'Version Registro';
LABEL ON COLUMN MSSGS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN MSSGS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN MSSGS.observaciones IS 'Observaciones';
LABEL ON COLUMN MSSGS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN MSSGS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN MSSGS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN MSSGS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN MSSGS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN MSSGS.created_at IS 'Created At';
LABEL ON COLUMN MSSGS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN MSSGS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN MSSGS.updated_at IS 'Updated At';
LABEL ON COLUMN MSSGS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_mssgs_created_at ON MSSGS (created_at);

-- TABLA: HOLYD
-- ============================================================================
-- Nombre de la Tabla: HOLYD
-- DESCRIPCIÓN: Tabla de datos para HOLYD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE HOLYD (
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_holyd_pk PRIMARY KEY (codigo_moneda, fecha)
) RCDFMT HOLYD;
COMMENT ON TABLE HOLYD IS 'Tabla de datos para HOLYD en el módulo bancario.';
LABEL ON TABLE HOLYD IS 'HOLYD';

COMMENT ON COLUMN HOLYD.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN HOLYD.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN HOLYD.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN HOLYD.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN HOLYD.fecha IS 'Fecha';
LABEL ON COLUMN HOLYD.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN HOLYD.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN HOLYD.descripcion IS 'Descripcion';
LABEL ON COLUMN HOLYD.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN HOLYD.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN HOLYD.valor_texto IS 'Valor Texto';
LABEL ON COLUMN HOLYD.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN HOLYD.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN HOLYD.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN HOLYD.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN HOLYD.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN HOLYD.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN HOLYD.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN HOLYD.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN HOLYD.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN HOLYD.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN HOLYD.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN HOLYD.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN HOLYD.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN HOLYD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN HOLYD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN HOLYD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN HOLYD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN HOLYD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN HOLYD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN HOLYD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN HOLYD.version_registro IS 'Version Registro';
LABEL ON COLUMN HOLYD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN HOLYD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN HOLYD.observaciones IS 'Observaciones';
LABEL ON COLUMN HOLYD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN HOLYD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN HOLYD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN HOLYD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN HOLYD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN HOLYD.created_at IS 'Created At';
LABEL ON COLUMN HOLYD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN HOLYD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN HOLYD.updated_at IS 'Updated At';
LABEL ON COLUMN HOLYD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_holyd_fecha ON HOLYD (fecha);
CREATE INDEX idx_holyd_created_at ON HOLYD (created_at);

-- TABLA: APCLS
-- ============================================================================
-- Nombre de la Tabla: APCLS
-- DESCRIPCIÓN: Tabla de datos para APCLS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE APCLS (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_de_producto VARCHAR(20) NOT NULL FOR COLUMN CODDEPRO,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_apcls_pk PRIMARY KEY (codigo_banco, codigo_de_producto)
) RCDFMT APCLS;
COMMENT ON TABLE APCLS IS 'Tabla de datos para APCLS en el módulo bancario.';
LABEL ON TABLE APCLS IS 'APCLS';

COMMENT ON COLUMN APCLS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN APCLS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN APCLS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN APCLS.codigo_de_producto IS 'Código del producto financiero.';
LABEL ON COLUMN APCLS.codigo_de_producto IS 'Codigo De Producto';
LABEL ON COLUMN APCLS.codigo_de_producto TEXT IS 'Código del producto financiero.';
COMMENT ON COLUMN APCLS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN APCLS.descripcion IS 'Descripcion';
LABEL ON COLUMN APCLS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN APCLS.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN APCLS.valor_texto IS 'Valor Texto';
LABEL ON COLUMN APCLS.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN APCLS.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN APCLS.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN APCLS.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN APCLS.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN APCLS.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN APCLS.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN APCLS.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN APCLS.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN APCLS.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN APCLS.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN APCLS.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN APCLS.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN APCLS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN APCLS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN APCLS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN APCLS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN APCLS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN APCLS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN APCLS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN APCLS.version_registro IS 'Version Registro';
LABEL ON COLUMN APCLS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN APCLS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN APCLS.observaciones IS 'Observaciones';
LABEL ON COLUMN APCLS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN APCLS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN APCLS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN APCLS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN APCLS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN APCLS.created_at IS 'Created At';
LABEL ON COLUMN APCLS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN APCLS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN APCLS.updated_at IS 'Updated At';
LABEL ON COLUMN APCLS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_apcls_created_at ON APCLS (created_at);

-- TABLA: RATES
-- ============================================================================
-- Nombre de la Tabla: RATES
-- DESCRIPCIÓN: Tabla de datos para RATES en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE RATES (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_rates_pk PRIMARY KEY (codigo_banco, codigo_moneda)
) RCDFMT RATES;
COMMENT ON TABLE RATES IS 'Tabla de datos para RATES en el módulo bancario.';
LABEL ON TABLE RATES IS 'RATES';

COMMENT ON COLUMN RATES.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN RATES.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN RATES.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN RATES.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN RATES.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN RATES.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN RATES.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN RATES.descripcion IS 'Descripcion';
LABEL ON COLUMN RATES.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN RATES.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN RATES.valor_texto IS 'Valor Texto';
LABEL ON COLUMN RATES.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN RATES.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN RATES.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN RATES.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN RATES.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN RATES.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN RATES.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN RATES.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN RATES.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN RATES.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN RATES.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN RATES.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN RATES.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN RATES.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN RATES.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN RATES.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN RATES.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN RATES.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN RATES.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN RATES.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN RATES.version_registro IS 'Version Registro';
LABEL ON COLUMN RATES.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN RATES.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN RATES.observaciones IS 'Observaciones';
LABEL ON COLUMN RATES.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN RATES.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN RATES.estado_registro IS 'Estado Registro';
LABEL ON COLUMN RATES.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN RATES.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN RATES.created_at IS 'Created At';
LABEL ON COLUMN RATES.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN RATES.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN RATES.updated_at IS 'Updated At';
LABEL ON COLUMN RATES.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_rates_created_at ON RATES (created_at);

-- TABLA: RTRNS
-- ============================================================================
-- Nombre de la Tabla: RTRNS
-- DESCRIPCIÓN: Tabla de datos para RTRNS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE RTRNS (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_rtrns_pk PRIMARY KEY (codigo_banco, codigo_moneda, fecha)
) RCDFMT RTRNS;
COMMENT ON TABLE RTRNS IS 'Tabla de datos para RTRNS en el módulo bancario.';
LABEL ON TABLE RTRNS IS 'RTRNS';

COMMENT ON COLUMN RTRNS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN RTRNS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN RTRNS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN RTRNS.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN RTRNS.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN RTRNS.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN RTRNS.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN RTRNS.fecha IS 'Fecha';
LABEL ON COLUMN RTRNS.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN RTRNS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN RTRNS.descripcion IS 'Descripcion';
LABEL ON COLUMN RTRNS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN RTRNS.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN RTRNS.valor_texto IS 'Valor Texto';
LABEL ON COLUMN RTRNS.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN RTRNS.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN RTRNS.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN RTRNS.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN RTRNS.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN RTRNS.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN RTRNS.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN RTRNS.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN RTRNS.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN RTRNS.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN RTRNS.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN RTRNS.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN RTRNS.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN RTRNS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN RTRNS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN RTRNS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN RTRNS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN RTRNS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN RTRNS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN RTRNS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN RTRNS.version_registro IS 'Version Registro';
LABEL ON COLUMN RTRNS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN RTRNS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN RTRNS.observaciones IS 'Observaciones';
LABEL ON COLUMN RTRNS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN RTRNS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN RTRNS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN RTRNS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN RTRNS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN RTRNS.created_at IS 'Created At';
LABEL ON COLUMN RTRNS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN RTRNS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN RTRNS.updated_at IS 'Updated At';
LABEL ON COLUMN RTRNS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_rtrns_fecha ON RTRNS (fecha);
CREATE INDEX idx_rtrns_created_at ON RTRNS (created_at);

-- TABLA: HLHIS
-- ============================================================================
-- Nombre de la Tabla: HLHIS
-- DESCRIPCIÓN: Tabla de datos para HLHIS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE HLHIS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_hlhis_pk PRIMARY KEY (id)
) RCDFMT HLHIS;
COMMENT ON TABLE HLHIS IS 'Tabla de datos para HLHIS en el módulo bancario.';
LABEL ON TABLE HLHIS IS 'HLHIS';

COMMENT ON COLUMN HLHIS.id IS 'Identificador único del registro.';
LABEL ON COLUMN HLHIS.id IS 'Id';
LABEL ON COLUMN HLHIS.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN HLHIS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN HLHIS.descripcion IS 'Descripcion';
LABEL ON COLUMN HLHIS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN HLHIS.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN HLHIS.valor_texto IS 'Valor Texto';
LABEL ON COLUMN HLHIS.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN HLHIS.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN HLHIS.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN HLHIS.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN HLHIS.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN HLHIS.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN HLHIS.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN HLHIS.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN HLHIS.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN HLHIS.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN HLHIS.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN HLHIS.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN HLHIS.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN HLHIS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN HLHIS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN HLHIS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN HLHIS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN HLHIS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN HLHIS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN HLHIS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN HLHIS.version_registro IS 'Version Registro';
LABEL ON COLUMN HLHIS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN HLHIS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN HLHIS.observaciones IS 'Observaciones';
LABEL ON COLUMN HLHIS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN HLHIS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN HLHIS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN HLHIS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN HLHIS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN HLHIS.created_at IS 'Created At';
LABEL ON COLUMN HLHIS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN HLHIS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN HLHIS.updated_at IS 'Updated At';
LABEL ON COLUMN HLHIS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_hlhis_created_at ON HLHIS (created_at);

-- TABLA: PRENA
-- ============================================================================
-- Nombre de la Tabla: PRENA
-- DESCRIPCIÓN: Tabla de datos para PRENA en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PRENA (
    nombre_programa VARCHAR(50) NOT NULL FOR COLUMN NOMPRO,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_prena_pk PRIMARY KEY (nombre_programa)
) RCDFMT PRENA;
COMMENT ON TABLE PRENA IS 'Tabla de datos para PRENA en el módulo bancario.';
LABEL ON TABLE PRENA IS 'PRENA';

COMMENT ON COLUMN PRENA.nombre_programa IS 'Campo nombre programa de la tabla PRENA.';
LABEL ON COLUMN PRENA.nombre_programa IS 'Nombre Programa';
LABEL ON COLUMN PRENA.nombre_programa TEXT IS 'Campo nombre programa de la tabla PRENA.';
COMMENT ON COLUMN PRENA.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN PRENA.descripcion IS 'Descripcion';
LABEL ON COLUMN PRENA.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN PRENA.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN PRENA.valor_texto IS 'Valor Texto';
LABEL ON COLUMN PRENA.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN PRENA.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN PRENA.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN PRENA.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN PRENA.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN PRENA.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN PRENA.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN PRENA.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN PRENA.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN PRENA.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN PRENA.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN PRENA.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN PRENA.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN PRENA.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PRENA.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PRENA.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PRENA.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PRENA.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PRENA.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PRENA.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PRENA.version_registro IS 'Version Registro';
LABEL ON COLUMN PRENA.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PRENA.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PRENA.observaciones IS 'Observaciones';
LABEL ON COLUMN PRENA.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PRENA.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PRENA.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PRENA.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PRENA.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PRENA.created_at IS 'Created At';
LABEL ON COLUMN PRENA.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PRENA.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PRENA.updated_at IS 'Updated At';
LABEL ON COLUMN PRENA.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_prena_created_at ON PRENA (created_at);

-- TABLA: PRENS
-- ============================================================================
-- Nombre de la Tabla: PRENS
-- DESCRIPCIÓN: Tabla de datos para PRENS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PRENS (
    nombre_programa VARCHAR(50) NOT NULL FOR COLUMN NOMPRO,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_prens_pk PRIMARY KEY (nombre_programa)
) RCDFMT PRENS;
COMMENT ON TABLE PRENS IS 'Tabla de datos para PRENS en el módulo bancario.';
LABEL ON TABLE PRENS IS 'PRENS';

COMMENT ON COLUMN PRENS.nombre_programa IS 'Campo nombre programa de la tabla PRENS.';
LABEL ON COLUMN PRENS.nombre_programa IS 'Nombre Programa';
LABEL ON COLUMN PRENS.nombre_programa TEXT IS 'Campo nombre programa de la tabla PRENS.';
COMMENT ON COLUMN PRENS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN PRENS.descripcion IS 'Descripcion';
LABEL ON COLUMN PRENS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN PRENS.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN PRENS.valor_texto IS 'Valor Texto';
LABEL ON COLUMN PRENS.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN PRENS.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN PRENS.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN PRENS.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN PRENS.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN PRENS.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN PRENS.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN PRENS.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN PRENS.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN PRENS.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN PRENS.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN PRENS.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN PRENS.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN PRENS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PRENS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PRENS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PRENS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PRENS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PRENS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PRENS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PRENS.version_registro IS 'Version Registro';
LABEL ON COLUMN PRENS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PRENS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PRENS.observaciones IS 'Observaciones';
LABEL ON COLUMN PRENS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PRENS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PRENS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PRENS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PRENS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PRENS.created_at IS 'Created At';
LABEL ON COLUMN PRENS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PRENS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PRENS.updated_at IS 'Updated At';
LABEL ON COLUMN PRENS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_prens_created_at ON PRENS (created_at);

-- TABLA: UT500
-- ============================================================================
-- Nombre de la Tabla: UT500
-- DESCRIPCIÓN: Tabla de datos para UT500 en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE UT500 (
    codigo_usuario VARCHAR(20) NOT NULL FOR COLUMN CODUSU,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ut500_pk PRIMARY KEY (codigo_usuario, fecha)
) RCDFMT UT500;
COMMENT ON TABLE UT500 IS 'Tabla de datos para UT500 en el módulo bancario.';
LABEL ON TABLE UT500 IS 'UT500';

COMMENT ON COLUMN UT500.codigo_usuario IS 'Código del usuario.';
LABEL ON COLUMN UT500.codigo_usuario IS 'Codigo Usuario';
LABEL ON COLUMN UT500.codigo_usuario TEXT IS 'Código del usuario.';
COMMENT ON COLUMN UT500.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN UT500.fecha IS 'Fecha';
LABEL ON COLUMN UT500.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN UT500.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN UT500.descripcion IS 'Descripcion';
LABEL ON COLUMN UT500.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN UT500.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN UT500.valor_texto IS 'Valor Texto';
LABEL ON COLUMN UT500.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN UT500.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN UT500.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN UT500.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN UT500.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN UT500.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN UT500.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN UT500.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN UT500.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN UT500.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN UT500.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN UT500.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN UT500.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN UT500.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN UT500.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN UT500.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN UT500.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN UT500.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN UT500.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN UT500.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN UT500.version_registro IS 'Version Registro';
LABEL ON COLUMN UT500.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN UT500.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN UT500.observaciones IS 'Observaciones';
LABEL ON COLUMN UT500.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN UT500.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN UT500.estado_registro IS 'Estado Registro';
LABEL ON COLUMN UT500.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN UT500.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN UT500.created_at IS 'Created At';
LABEL ON COLUMN UT500.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN UT500.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN UT500.updated_at IS 'Updated At';
LABEL ON COLUMN UT500.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ut500_fecha ON UT500 (fecha);
CREATE INDEX idx_ut500_created_at ON UT500 (created_at);

-- TABLA: UT510
-- ============================================================================
-- Nombre de la Tabla: UT510
-- DESCRIPCIÓN: Tabla de datos para UT510 en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE UT510 (
    codigo_usuario VARCHAR(20) NOT NULL FOR COLUMN CODUSU,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ut510_pk PRIMARY KEY (codigo_usuario, fecha)
) RCDFMT UT510;
COMMENT ON TABLE UT510 IS 'Tabla de datos para UT510 en el módulo bancario.';
LABEL ON TABLE UT510 IS 'UT510';

COMMENT ON COLUMN UT510.codigo_usuario IS 'Código del usuario.';
LABEL ON COLUMN UT510.codigo_usuario IS 'Codigo Usuario';
LABEL ON COLUMN UT510.codigo_usuario TEXT IS 'Código del usuario.';
COMMENT ON COLUMN UT510.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN UT510.fecha IS 'Fecha';
LABEL ON COLUMN UT510.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN UT510.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN UT510.descripcion IS 'Descripcion';
LABEL ON COLUMN UT510.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN UT510.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN UT510.valor_texto IS 'Valor Texto';
LABEL ON COLUMN UT510.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN UT510.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN UT510.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN UT510.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN UT510.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN UT510.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN UT510.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN UT510.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN UT510.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN UT510.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN UT510.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN UT510.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN UT510.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN UT510.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN UT510.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN UT510.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN UT510.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN UT510.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN UT510.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN UT510.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN UT510.version_registro IS 'Version Registro';
LABEL ON COLUMN UT510.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN UT510.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN UT510.observaciones IS 'Observaciones';
LABEL ON COLUMN UT510.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN UT510.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN UT510.estado_registro IS 'Estado Registro';
LABEL ON COLUMN UT510.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN UT510.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN UT510.created_at IS 'Created At';
LABEL ON COLUMN UT510.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN UT510.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN UT510.updated_at IS 'Updated At';
LABEL ON COLUMN UT510.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ut510_fecha ON UT510 (fecha);
CREATE INDEX idx_ut510_created_at ON UT510 (created_at);

-- TABLA: MICRF
-- ============================================================================
-- Nombre de la Tabla: MICRF
-- DESCRIPCIÓN: Tabla de datos para MICRF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE MICRF (
    tipo_formulario VARCHAR(50) NOT NULL FOR COLUMN TIPFOR,
    nombre_reporte VARCHAR(50) NOT NULL FOR COLUMN NOMREP,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_micrf_pk PRIMARY KEY (tipo_formulario, nombre_reporte, secuencia)
) RCDFMT MICRF;
COMMENT ON TABLE MICRF IS 'Tabla de datos para MICRF en el módulo bancario.';
LABEL ON TABLE MICRF IS 'MICRF';

COMMENT ON COLUMN MICRF.tipo_formulario IS 'Campo tipo formulario de la tabla MICRF.';
LABEL ON COLUMN MICRF.tipo_formulario IS 'Tipo Formulario';
LABEL ON COLUMN MICRF.tipo_formulario TEXT IS 'Campo tipo formulario de la tabla MICRF.';
COMMENT ON COLUMN MICRF.nombre_reporte IS 'Campo nombre reporte de la tabla MICRF.';
LABEL ON COLUMN MICRF.nombre_reporte IS 'Nombre Reporte';
LABEL ON COLUMN MICRF.nombre_reporte TEXT IS 'Campo nombre reporte de la tabla MICRF.';
COMMENT ON COLUMN MICRF.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN MICRF.secuencia IS 'Secuencia';
LABEL ON COLUMN MICRF.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN MICRF.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN MICRF.descripcion IS 'Descripcion';
LABEL ON COLUMN MICRF.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN MICRF.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN MICRF.valor_texto IS 'Valor Texto';
LABEL ON COLUMN MICRF.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN MICRF.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN MICRF.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN MICRF.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN MICRF.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN MICRF.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN MICRF.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN MICRF.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN MICRF.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN MICRF.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN MICRF.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN MICRF.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN MICRF.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN MICRF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN MICRF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN MICRF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN MICRF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN MICRF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN MICRF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN MICRF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN MICRF.version_registro IS 'Version Registro';
LABEL ON COLUMN MICRF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN MICRF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN MICRF.observaciones IS 'Observaciones';
LABEL ON COLUMN MICRF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN MICRF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN MICRF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN MICRF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN MICRF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN MICRF.created_at IS 'Created At';
LABEL ON COLUMN MICRF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN MICRF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN MICRF.updated_at IS 'Updated At';
LABEL ON COLUMN MICRF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_micrf_created_at ON MICRF (created_at);

-- TABLA: IBSDD
-- ============================================================================
-- Nombre de la Tabla: IBSDD
-- DESCRIPCIÓN: Tabla de datos para IBSDD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE IBSDD (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ibsdd_pk PRIMARY KEY (id)
) RCDFMT IBSDD;
COMMENT ON TABLE IBSDD IS 'Tabla de datos para IBSDD en el módulo bancario.';
LABEL ON TABLE IBSDD IS 'IBSDD';

COMMENT ON COLUMN IBSDD.id IS 'Identificador único del registro.';
LABEL ON COLUMN IBSDD.id IS 'Id';
LABEL ON COLUMN IBSDD.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN IBSDD.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN IBSDD.descripcion IS 'Descripcion';
LABEL ON COLUMN IBSDD.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN IBSDD.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN IBSDD.valor_texto IS 'Valor Texto';
LABEL ON COLUMN IBSDD.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN IBSDD.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN IBSDD.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN IBSDD.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN IBSDD.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN IBSDD.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN IBSDD.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN IBSDD.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN IBSDD.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN IBSDD.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN IBSDD.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN IBSDD.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN IBSDD.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN IBSDD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN IBSDD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN IBSDD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN IBSDD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN IBSDD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN IBSDD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN IBSDD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN IBSDD.version_registro IS 'Version Registro';
LABEL ON COLUMN IBSDD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN IBSDD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN IBSDD.observaciones IS 'Observaciones';
LABEL ON COLUMN IBSDD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN IBSDD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN IBSDD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN IBSDD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN IBSDD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN IBSDD.created_at IS 'Created At';
LABEL ON COLUMN IBSDD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN IBSDD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN IBSDD.updated_at IS 'Updated At';
LABEL ON COLUMN IBSDD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ibsdd_created_at ON IBSDD (created_at);

-- TABLA: IBTBL
-- ============================================================================
-- Nombre de la Tabla: IBTBL
-- DESCRIPCIÓN: Tabla de datos para IBTBL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE IBTBL (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ibtbl_pk PRIMARY KEY (id)
) RCDFMT IBTBL;
COMMENT ON TABLE IBTBL IS 'Tabla de datos para IBTBL en el módulo bancario.';
LABEL ON TABLE IBTBL IS 'IBTBL';

COMMENT ON COLUMN IBTBL.id IS 'Identificador único del registro.';
LABEL ON COLUMN IBTBL.id IS 'Id';
LABEL ON COLUMN IBTBL.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN IBTBL.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN IBTBL.descripcion IS 'Descripcion';
LABEL ON COLUMN IBTBL.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN IBTBL.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN IBTBL.valor_texto IS 'Valor Texto';
LABEL ON COLUMN IBTBL.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN IBTBL.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN IBTBL.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN IBTBL.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN IBTBL.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN IBTBL.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN IBTBL.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN IBTBL.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN IBTBL.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN IBTBL.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN IBTBL.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN IBTBL.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN IBTBL.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN IBTBL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN IBTBL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN IBTBL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN IBTBL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN IBTBL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN IBTBL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN IBTBL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN IBTBL.version_registro IS 'Version Registro';
LABEL ON COLUMN IBTBL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN IBTBL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN IBTBL.observaciones IS 'Observaciones';
LABEL ON COLUMN IBTBL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN IBTBL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN IBTBL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN IBTBL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN IBTBL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN IBTBL.created_at IS 'Created At';
LABEL ON COLUMN IBTBL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN IBTBL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN IBTBL.updated_at IS 'Updated At';
LABEL ON COLUMN IBTBL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ibtbl_created_at ON IBTBL (created_at);

-- TABLA: TRANS
-- ============================================================================
-- Nombre de la Tabla: TRANS
-- DESCRIPCIÓN: Tabla de datos para TRANS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE TRANS (
    id_transaccion BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN IDTRA,
    numero_registro_relativo VARCHAR(30) FOR COLUMN NUMREGREL,
    codigo_banco VARCHAR(20) FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) FOR COLUMN CUECON,
    numero_cuenta VARCHAR(24) FOR COLUMN NUMCUE,
    id_cliente VARCHAR(30) FOR COLUMN IDCLIENTE,
    fecha_operacion DATE FOR COLUMN FECOPE,
    fecha_valor DATE FOR COLUMN FECHAVALOR,
    hora_operacion TIME FOR COLUMN HOROPE,
    tipo_movimiento VARCHAR(20) FOR COLUMN TIPMOV,
    debito_credito CHAR(1) FOR COLUMN DEBCRE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    saldo_anterior DECIMAL(18,2) FOR COLUMN SALANT,
    saldo_posterior DECIMAL(18,2) FOR COLUMN SALPOS,
    canal_origen VARCHAR(20) FOR COLUMN CANORI,
    terminal_origen VARCHAR(30) FOR COLUMN TERORI,
    referencia_externa VARCHAR(40) FOR COLUMN REFEXT,
    estado_transaccion VARCHAR(20) FOR COLUMN ESTTRA,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_trans_pk PRIMARY KEY (id_transaccion)
) RCDFMT TRANS;
COMMENT ON TABLE TRANS IS 'Tabla de datos para TRANS en el módulo bancario.';
LABEL ON TABLE TRANS IS 'TRANS';

COMMENT ON COLUMN TRANS.id_transaccion IS 'Identificador del transaccion.';
LABEL ON COLUMN TRANS.id_transaccion IS 'Id Transaccion';
LABEL ON COLUMN TRANS.id_transaccion TEXT IS 'Identificador del transaccion.';
COMMENT ON COLUMN TRANS.numero_registro_relativo IS 'Número de registro relativo para conciliación.';
LABEL ON COLUMN TRANS.numero_registro_relativo IS 'Numero Registro Relativo';
LABEL ON COLUMN TRANS.numero_registro_relativo TEXT IS 'Número de registro relativo para conciliación.';
COMMENT ON COLUMN TRANS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN TRANS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN TRANS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN TRANS.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN TRANS.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN TRANS.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN TRANS.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN TRANS.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN TRANS.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN TRANS.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN TRANS.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN TRANS.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN TRANS.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN TRANS.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN TRANS.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN TRANS.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN TRANS.id_cliente IS 'Id Cliente';
LABEL ON COLUMN TRANS.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN TRANS.fecha_operacion IS 'Campo fecha operacion de la tabla TRANS.';
LABEL ON COLUMN TRANS.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN TRANS.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla TRANS.';
COMMENT ON COLUMN TRANS.fecha_valor IS 'Campo fecha valor de la tabla TRANS.';
LABEL ON COLUMN TRANS.fecha_valor IS 'Fecha Valor';
LABEL ON COLUMN TRANS.fecha_valor TEXT IS 'Campo fecha valor de la tabla TRANS.';
COMMENT ON COLUMN TRANS.hora_operacion IS 'Campo hora operacion de la tabla TRANS.';
LABEL ON COLUMN TRANS.hora_operacion IS 'Hora Operacion';
LABEL ON COLUMN TRANS.hora_operacion TEXT IS 'Campo hora operacion de la tabla TRANS.';
COMMENT ON COLUMN TRANS.tipo_movimiento IS 'Campo tipo movimiento de la tabla TRANS.';
LABEL ON COLUMN TRANS.tipo_movimiento IS 'Tipo Movimiento';
LABEL ON COLUMN TRANS.tipo_movimiento TEXT IS 'Campo tipo movimiento de la tabla TRANS.';
COMMENT ON COLUMN TRANS.debito_credito IS 'Campo debito credito de la tabla TRANS.';
LABEL ON COLUMN TRANS.debito_credito IS 'Debito Credito';
LABEL ON COLUMN TRANS.debito_credito TEXT IS 'Campo debito credito de la tabla TRANS.';
COMMENT ON COLUMN TRANS.monto IS 'Campo monto de la tabla TRANS.';
LABEL ON COLUMN TRANS.monto IS 'Monto';
LABEL ON COLUMN TRANS.monto TEXT IS 'Campo monto de la tabla TRANS.';
COMMENT ON COLUMN TRANS.saldo_anterior IS 'Campo saldo anterior de la tabla TRANS.';
LABEL ON COLUMN TRANS.saldo_anterior IS 'Saldo Anterior';
LABEL ON COLUMN TRANS.saldo_anterior TEXT IS 'Campo saldo anterior de la tabla TRANS.';
COMMENT ON COLUMN TRANS.saldo_posterior IS 'Campo saldo posterior de la tabla TRANS.';
LABEL ON COLUMN TRANS.saldo_posterior IS 'Saldo Posterior';
LABEL ON COLUMN TRANS.saldo_posterior TEXT IS 'Campo saldo posterior de la tabla TRANS.';
COMMENT ON COLUMN TRANS.canal_origen IS 'Campo canal origen de la tabla TRANS.';
LABEL ON COLUMN TRANS.canal_origen IS 'Canal Origen';
LABEL ON COLUMN TRANS.canal_origen TEXT IS 'Campo canal origen de la tabla TRANS.';
COMMENT ON COLUMN TRANS.terminal_origen IS 'Campo terminal origen de la tabla TRANS.';
LABEL ON COLUMN TRANS.terminal_origen IS 'Terminal Origen';
LABEL ON COLUMN TRANS.terminal_origen TEXT IS 'Campo terminal origen de la tabla TRANS.';
COMMENT ON COLUMN TRANS.referencia_externa IS 'Campo referencia externa de la tabla TRANS.';
LABEL ON COLUMN TRANS.referencia_externa IS 'Referencia Externa';
LABEL ON COLUMN TRANS.referencia_externa TEXT IS 'Campo referencia externa de la tabla TRANS.';
COMMENT ON COLUMN TRANS.estado_transaccion IS 'Campo estado transaccion de la tabla TRANS.';
LABEL ON COLUMN TRANS.estado_transaccion IS 'Estado Transaccion';
LABEL ON COLUMN TRANS.estado_transaccion TEXT IS 'Campo estado transaccion de la tabla TRANS.';
COMMENT ON COLUMN TRANS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN TRANS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN TRANS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN TRANS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN TRANS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN TRANS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN TRANS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN TRANS.version_registro IS 'Version Registro';
LABEL ON COLUMN TRANS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN TRANS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN TRANS.observaciones IS 'Observaciones';
LABEL ON COLUMN TRANS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN TRANS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN TRANS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN TRANS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN TRANS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN TRANS.created_at IS 'Created At';
LABEL ON COLUMN TRANS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN TRANS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN TRANS.updated_at IS 'Updated At';
LABEL ON COLUMN TRANS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_trans_reg_rel ON TRANS (numero_registro_relativo);
CREATE INDEX idx_trans_cuenta_fecha ON TRANS (numero_cuenta, fecha_operacion);
CREATE INDEX idx_trans_contable_fecha ON TRANS (cuenta_contable, fecha_operacion);
CREATE INDEX idx_trans_cliente_fecha ON TRANS (id_cliente, fecha_operacion);
CREATE INDEX idx_trans_created_at ON TRANS (created_at);

-- TABLA: TRDSC
-- ============================================================================
-- Nombre de la Tabla: TRDSC
-- DESCRIPCIÓN: Tabla de datos para TRDSC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE TRDSC (
    numero_registro_relativo VARCHAR(30) NOT NULL FOR COLUMN NUMREGREL,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_descripcion VARCHAR(20) FOR COLUMN TIPDES,
    texto_descripcion VARCHAR(200) FOR COLUMN TEXDES,
    codigo_idioma VARCHAR(5) FOR COLUMN CODIDI,
    formato_salida VARCHAR(20) FOR COLUMN FORSAL,
    obligatorio BOOLEAN FOR COLUMN OBL,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_trdsc_pk PRIMARY KEY (numero_registro_relativo, secuencia)
) RCDFMT TRDSC;
COMMENT ON TABLE TRDSC IS 'Tabla de datos para TRDSC en el módulo bancario.';
LABEL ON TABLE TRDSC IS 'TRDSC';

COMMENT ON COLUMN TRDSC.numero_registro_relativo IS 'Número de registro relativo para conciliación.';
LABEL ON COLUMN TRDSC.numero_registro_relativo IS 'Numero Registro Relativo';
LABEL ON COLUMN TRDSC.numero_registro_relativo TEXT IS 'Número de registro relativo para conciliación.';
COMMENT ON COLUMN TRDSC.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN TRDSC.secuencia IS 'Secuencia';
LABEL ON COLUMN TRDSC.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN TRDSC.tipo_descripcion IS 'Campo tipo descripcion de la tabla TRDSC.';
LABEL ON COLUMN TRDSC.tipo_descripcion IS 'Tipo Descripcion';
LABEL ON COLUMN TRDSC.tipo_descripcion TEXT IS 'Campo tipo descripcion de la tabla TRDSC.';
COMMENT ON COLUMN TRDSC.texto_descripcion IS 'Campo texto descripcion de la tabla TRDSC.';
LABEL ON COLUMN TRDSC.texto_descripcion IS 'Texto Descripcion';
LABEL ON COLUMN TRDSC.texto_descripcion TEXT IS 'Campo texto descripcion de la tabla TRDSC.';
COMMENT ON COLUMN TRDSC.codigo_idioma IS 'Código del idioma.';
LABEL ON COLUMN TRDSC.codigo_idioma IS 'Codigo Idioma';
LABEL ON COLUMN TRDSC.codigo_idioma TEXT IS 'Código del idioma.';
COMMENT ON COLUMN TRDSC.formato_salida IS 'Campo formato salida de la tabla TRDSC.';
LABEL ON COLUMN TRDSC.formato_salida IS 'Formato Salida';
LABEL ON COLUMN TRDSC.formato_salida TEXT IS 'Campo formato salida de la tabla TRDSC.';
COMMENT ON COLUMN TRDSC.obligatorio IS 'Campo obligatorio de la tabla TRDSC.';
LABEL ON COLUMN TRDSC.obligatorio IS 'Obligatorio';
LABEL ON COLUMN TRDSC.obligatorio TEXT IS 'Campo obligatorio de la tabla TRDSC.';
COMMENT ON COLUMN TRDSC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN TRDSC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN TRDSC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN TRDSC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN TRDSC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN TRDSC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN TRDSC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN TRDSC.version_registro IS 'Version Registro';
LABEL ON COLUMN TRDSC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN TRDSC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN TRDSC.observaciones IS 'Observaciones';
LABEL ON COLUMN TRDSC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN TRDSC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN TRDSC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN TRDSC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN TRDSC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN TRDSC.created_at IS 'Created At';
LABEL ON COLUMN TRDSC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN TRDSC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN TRDSC.updated_at IS 'Updated At';
LABEL ON COLUMN TRDSC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_trdsc_tipo ON TRDSC (tipo_descripcion);
CREATE INDEX idx_trdsc_created_at ON TRDSC (created_at);

-- TABLA: TTRAN
-- ============================================================================
-- Nombre de la Tabla: TTRAN
-- DESCRIPCIÓN: Tabla de datos para TTRAN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE TTRAN (
    id_transaccion_dia BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN IDTRADIA,
    numero_registro_relativo VARCHAR(30) FOR COLUMN NUMREGREL,
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    id_cliente VARCHAR(30) FOR COLUMN IDCLIENTE,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    fecha_valor DATE FOR COLUMN FECHAVALOR,
    hora_operacion TIME FOR COLUMN HOROPE,
    tipo_movimiento VARCHAR(20) FOR COLUMN TIPMOV,
    debito_credito CHAR(1) FOR COLUMN DEBCRE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    saldo_anterior DECIMAL(18,2) FOR COLUMN SALANT,
    saldo_posterior DECIMAL(18,2) FOR COLUMN SALPOS,
    canal_origen VARCHAR(20) FOR COLUMN CANORI,
    terminal_origen VARCHAR(30) FOR COLUMN TERORI,
    referencia_externa VARCHAR(40) FOR COLUMN REFEXT,
    estado_transaccion VARCHAR(20) FOR COLUMN ESTTRA,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ttran_pk PRIMARY KEY (id_transaccion_dia, codigo_banco)
) RCDFMT TTRAN;
COMMENT ON TABLE TTRAN IS 'Tabla de datos para TTRAN en el módulo bancario.';
LABEL ON TABLE TTRAN IS 'TTRAN';

COMMENT ON COLUMN TTRAN.id_transaccion_dia IS 'Identificador del transaccion dia.';
LABEL ON COLUMN TTRAN.id_transaccion_dia IS 'Id Transaccion Dia';
LABEL ON COLUMN TTRAN.id_transaccion_dia TEXT IS 'Identificador del transaccion dia.';
COMMENT ON COLUMN TTRAN.numero_registro_relativo IS 'Número de registro relativo para conciliación.';
LABEL ON COLUMN TTRAN.numero_registro_relativo IS 'Numero Registro Relativo';
LABEL ON COLUMN TTRAN.numero_registro_relativo TEXT IS 'Número de registro relativo para conciliación.';
COMMENT ON COLUMN TTRAN.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN TTRAN.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN TTRAN.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN TTRAN.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN TTRAN.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN TTRAN.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN TTRAN.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN TTRAN.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN TTRAN.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN TTRAN.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN TTRAN.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN TTRAN.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN TTRAN.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN TTRAN.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN TTRAN.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN TTRAN.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN TTRAN.id_cliente IS 'Id Cliente';
LABEL ON COLUMN TTRAN.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN TTRAN.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN TTRAN.fecha IS 'Fecha';
LABEL ON COLUMN TTRAN.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN TTRAN.fecha_valor IS 'Campo fecha valor de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.fecha_valor IS 'Fecha Valor';
LABEL ON COLUMN TTRAN.fecha_valor TEXT IS 'Campo fecha valor de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.hora_operacion IS 'Campo hora operacion de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.hora_operacion IS 'Hora Operacion';
LABEL ON COLUMN TTRAN.hora_operacion TEXT IS 'Campo hora operacion de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.tipo_movimiento IS 'Campo tipo movimiento de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.tipo_movimiento IS 'Tipo Movimiento';
LABEL ON COLUMN TTRAN.tipo_movimiento TEXT IS 'Campo tipo movimiento de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.debito_credito IS 'Campo debito credito de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.debito_credito IS 'Debito Credito';
LABEL ON COLUMN TTRAN.debito_credito TEXT IS 'Campo debito credito de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.monto IS 'Campo monto de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.monto IS 'Monto';
LABEL ON COLUMN TTRAN.monto TEXT IS 'Campo monto de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.saldo_anterior IS 'Campo saldo anterior de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.saldo_anterior IS 'Saldo Anterior';
LABEL ON COLUMN TTRAN.saldo_anterior TEXT IS 'Campo saldo anterior de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.saldo_posterior IS 'Campo saldo posterior de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.saldo_posterior IS 'Saldo Posterior';
LABEL ON COLUMN TTRAN.saldo_posterior TEXT IS 'Campo saldo posterior de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.canal_origen IS 'Campo canal origen de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.canal_origen IS 'Canal Origen';
LABEL ON COLUMN TTRAN.canal_origen TEXT IS 'Campo canal origen de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.terminal_origen IS 'Campo terminal origen de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.terminal_origen IS 'Terminal Origen';
LABEL ON COLUMN TTRAN.terminal_origen TEXT IS 'Campo terminal origen de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.referencia_externa IS 'Campo referencia externa de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.referencia_externa IS 'Referencia Externa';
LABEL ON COLUMN TTRAN.referencia_externa TEXT IS 'Campo referencia externa de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.estado_transaccion IS 'Campo estado transaccion de la tabla TTRAN.';
LABEL ON COLUMN TTRAN.estado_transaccion IS 'Estado Transaccion';
LABEL ON COLUMN TTRAN.estado_transaccion TEXT IS 'Campo estado transaccion de la tabla TTRAN.';
COMMENT ON COLUMN TTRAN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN TTRAN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN TTRAN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN TTRAN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN TTRAN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN TTRAN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN TTRAN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN TTRAN.version_registro IS 'Version Registro';
LABEL ON COLUMN TTRAN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN TTRAN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN TTRAN.observaciones IS 'Observaciones';
LABEL ON COLUMN TTRAN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN TTRAN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN TTRAN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN TTRAN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN TTRAN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN TTRAN.created_at IS 'Created At';
LABEL ON COLUMN TTRAN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN TTRAN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN TTRAN.updated_at IS 'Updated At';
LABEL ON COLUMN TTRAN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ttran_reg_rel ON TTRAN (numero_registro_relativo);
CREATE INDEX idx_ttran_cuenta_fecha ON TTRAN (numero_cuenta, fecha);
CREATE INDEX idx_ttran_contable_fecha ON TTRAN (cuenta_contable, fecha);
CREATE INDEX idx_ttran_cliente_fecha ON TTRAN (id_cliente, fecha);
CREATE INDEX idx_ttran_fecha ON TTRAN (fecha);
CREATE INDEX idx_ttran_created_at ON TTRAN (created_at);

-- TABLA: CIFXF
-- ============================================================================
-- Nombre de la Tabla: CIFXF
-- DESCRIPCIÓN: Tabla de datos para CIFXF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CIFXF (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cifxf_pk PRIMARY KEY (id)
) RCDFMT CIFXF;
COMMENT ON TABLE CIFXF IS 'Tabla de datos para CIFXF en el módulo bancario.';
LABEL ON TABLE CIFXF IS 'CIFXF';

COMMENT ON COLUMN CIFXF.id IS 'Identificador único del registro.';
LABEL ON COLUMN CIFXF.id IS 'Id';
LABEL ON COLUMN CIFXF.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN CIFXF.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CIFXF.descripcion IS 'Descripcion';
LABEL ON COLUMN CIFXF.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CIFXF.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CIFXF.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CIFXF.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CIFXF.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CIFXF.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CIFXF.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CIFXF.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CIFXF.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CIFXF.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CIFXF.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CIFXF.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CIFXF.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CIFXF.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CIFXF.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CIFXF.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CIFXF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CIFXF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CIFXF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CIFXF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CIFXF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CIFXF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CIFXF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CIFXF.version_registro IS 'Version Registro';
LABEL ON COLUMN CIFXF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CIFXF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CIFXF.observaciones IS 'Observaciones';
LABEL ON COLUMN CIFXF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CIFXF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CIFXF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CIFXF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CIFXF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CIFXF.created_at IS 'Created At';
LABEL ON COLUMN CIFXF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CIFXF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CIFXF.updated_at IS 'Updated At';
LABEL ON COLUMN CIFXF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cifxf_created_at ON CIFXF (created_at);

-- TABLA: CNTRLCNT
-- ============================================================================
-- Nombre de la Tabla: CNTRLCNT
-- DESCRIPCIÓN: Tabla de datos para CNTRLCNT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLCNT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlcnt_pk PRIMARY KEY (codigo_banco)
) RCDFMT CNTRLCNT;
COMMENT ON TABLE CNTRLCNT IS 'Tabla de datos para CNTRLCNT en el módulo bancario.';
LABEL ON TABLE CNTRLCNT IS 'CNTRLCNT';

COMMENT ON COLUMN CNTRLCNT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLCNT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLCNT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLCNT.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNTRLCNT.descripcion IS 'Descripcion';
LABEL ON COLUMN CNTRLCNT.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNTRLCNT.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNTRLCNT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNTRLCNT.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNTRLCNT.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNTRLCNT.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNTRLCNT.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNTRLCNT.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNTRLCNT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNTRLCNT.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNTRLCNT.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNTRLCNT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNTRLCNT.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNTRLCNT.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNTRLCNT.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNTRLCNT.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNTRLCNT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLCNT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLCNT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLCNT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLCNT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLCNT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLCNT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLCNT.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLCNT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLCNT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLCNT.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLCNT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLCNT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLCNT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLCNT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLCNT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLCNT.created_at IS 'Created At';
LABEL ON COLUMN CNTRLCNT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLCNT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLCNT.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLCNT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlcnt_created_at ON CNTRLCNT (created_at);

-- TABLA: CNTRLBRN
-- ============================================================================
-- Nombre de la Tabla: CNTRLBRN
-- DESCRIPCIÓN: Tabla de datos para CNTRLBRN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLBRN (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlbrn_pk PRIMARY KEY (codigo_banco, codigo_sucursal)
) RCDFMT CNTRLBRN;
COMMENT ON TABLE CNTRLBRN IS 'Tabla de datos para CNTRLBRN en el módulo bancario.';
LABEL ON TABLE CNTRLBRN IS 'CNTRLBRN';

COMMENT ON COLUMN CNTRLBRN.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLBRN.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLBRN.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLBRN.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN CNTRLBRN.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN CNTRLBRN.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN CNTRLBRN.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNTRLBRN.descripcion IS 'Descripcion';
LABEL ON COLUMN CNTRLBRN.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNTRLBRN.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNTRLBRN.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNTRLBRN.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNTRLBRN.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNTRLBRN.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNTRLBRN.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNTRLBRN.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNTRLBRN.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNTRLBRN.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNTRLBRN.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNTRLBRN.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNTRLBRN.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNTRLBRN.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNTRLBRN.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNTRLBRN.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNTRLBRN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLBRN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLBRN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLBRN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLBRN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLBRN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLBRN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLBRN.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLBRN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLBRN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLBRN.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLBRN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLBRN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLBRN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLBRN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLBRN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLBRN.created_at IS 'Created At';
LABEL ON COLUMN CNTRLBRN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLBRN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLBRN.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLBRN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlbrn_created_at ON CNTRLBRN (created_at);

-- TABLA: CNTRLNUM
-- ============================================================================
-- Nombre de la Tabla: CNTRLNUM
-- DESCRIPCIÓN: Tabla de datos para CNTRLNUM en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLNUM (
    codigo_aplicacion VARCHAR(20) NOT NULL FOR COLUMN CODAPL,
    tipo_cuenta VARCHAR(20) NOT NULL FOR COLUMN TIPOCUENTA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlnum_pk PRIMARY KEY (codigo_aplicacion, tipo_cuenta)
) RCDFMT CNTRLNUM;
COMMENT ON TABLE CNTRLNUM IS 'Tabla de datos para CNTRLNUM en el módulo bancario.';
LABEL ON TABLE CNTRLNUM IS 'CNTRLNUM';

COMMENT ON COLUMN CNTRLNUM.codigo_aplicacion IS 'Código del aplicacion.';
LABEL ON COLUMN CNTRLNUM.codigo_aplicacion IS 'Codigo Aplicacion';
LABEL ON COLUMN CNTRLNUM.codigo_aplicacion TEXT IS 'Código del aplicacion.';
COMMENT ON COLUMN CNTRLNUM.tipo_cuenta IS 'Campo tipo cuenta de la tabla CNTRLNUM.';
LABEL ON COLUMN CNTRLNUM.tipo_cuenta IS 'Tipo Cuenta';
LABEL ON COLUMN CNTRLNUM.tipo_cuenta TEXT IS 'Campo tipo cuenta de la tabla CNTRLNUM.';
COMMENT ON COLUMN CNTRLNUM.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNTRLNUM.descripcion IS 'Descripcion';
LABEL ON COLUMN CNTRLNUM.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNTRLNUM.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNTRLNUM.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNTRLNUM.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNTRLNUM.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNTRLNUM.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNTRLNUM.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNTRLNUM.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNTRLNUM.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNTRLNUM.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNTRLNUM.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNTRLNUM.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNTRLNUM.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNTRLNUM.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNTRLNUM.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNTRLNUM.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNTRLNUM.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLNUM.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLNUM.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLNUM.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLNUM.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLNUM.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLNUM.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLNUM.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLNUM.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLNUM.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLNUM.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLNUM.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLNUM.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLNUM.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLNUM.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLNUM.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLNUM.created_at IS 'Created At';
LABEL ON COLUMN CNTRLNUM.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLNUM.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLNUM.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLNUM.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlnum_created_at ON CNTRLNUM (created_at);

-- TABLA: CNTRLTAX
-- ============================================================================
-- Nombre de la Tabla: CNTRLTAX
-- DESCRIPCIÓN: Tabla de datos para CNTRLTAX en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLTAX (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_impuesto VARCHAR(20) NOT NULL FOR COLUMN CODIMP,
    descripcion VARCHAR(120) FOR COLUMN DES,
    valor_texto VARCHAR(50) FOR COLUMN VALORTEXTO,
    valor_numerico DECIMAL(18,2) FOR COLUMN VALNUM,
    vigencia_desde DATE FOR COLUMN VIGDES,
    vigencia_hasta DATE FOR COLUMN VIGHAS,
    orden_visualizacion INTEGER FOR COLUMN ORDVIS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrltax_pk PRIMARY KEY (codigo_banco, codigo_impuesto)
) RCDFMT CNTRLTAX;
COMMENT ON TABLE CNTRLTAX IS 'Tabla de datos para CNTRLTAX en el módulo bancario.';
LABEL ON TABLE CNTRLTAX IS 'CNTRLTAX';

COMMENT ON COLUMN CNTRLTAX.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLTAX.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLTAX.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLTAX.codigo_impuesto IS 'Código del impuesto asociado.';
LABEL ON COLUMN CNTRLTAX.codigo_impuesto IS 'Codigo Impuesto';
LABEL ON COLUMN CNTRLTAX.codigo_impuesto TEXT IS 'Código del impuesto asociado.';
COMMENT ON COLUMN CNTRLTAX.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNTRLTAX.descripcion IS 'Descripcion';
LABEL ON COLUMN CNTRLTAX.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNTRLTAX.valor_texto IS 'Valor textual asociado al registro.';
LABEL ON COLUMN CNTRLTAX.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNTRLTAX.valor_texto TEXT IS 'Valor textual asociado al registro.';
COMMENT ON COLUMN CNTRLTAX.valor_numerico IS 'Valor numérico asociado al registro.';
LABEL ON COLUMN CNTRLTAX.valor_numerico IS 'Valor Numerico';
LABEL ON COLUMN CNTRLTAX.valor_numerico TEXT IS 'Valor numérico asociado al registro.';
COMMENT ON COLUMN CNTRLTAX.vigencia_desde IS 'Fecha de inicio de vigencia.';
LABEL ON COLUMN CNTRLTAX.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNTRLTAX.vigencia_desde TEXT IS 'Fecha de inicio de vigencia.';
COMMENT ON COLUMN CNTRLTAX.vigencia_hasta IS 'Fecha de término de vigencia.';
LABEL ON COLUMN CNTRLTAX.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNTRLTAX.vigencia_hasta TEXT IS 'Fecha de término de vigencia.';
COMMENT ON COLUMN CNTRLTAX.orden_visualizacion IS 'Orden de presentación en listados.';
LABEL ON COLUMN CNTRLTAX.orden_visualizacion IS 'Orden Visualizacion';
LABEL ON COLUMN CNTRLTAX.orden_visualizacion TEXT IS 'Orden de presentación en listados.';
COMMENT ON COLUMN CNTRLTAX.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLTAX.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLTAX.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLTAX.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLTAX.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLTAX.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLTAX.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLTAX.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLTAX.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLTAX.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLTAX.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLTAX.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLTAX.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLTAX.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLTAX.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLTAX.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLTAX.created_at IS 'Created At';
LABEL ON COLUMN CNTRLTAX.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLTAX.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLTAX.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLTAX.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrltax_created_at ON CNTRLTAX (created_at);

-- ============================================================================
-- MODULO 2: CLIENTES (5 tablas)
-- ============================================================================

-- TABLA: CUMST
-- ============================================================================
-- Nombre de la Tabla: CUMST
-- DESCRIPCIÓN: Tabla de datos para CUMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CUMST (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    tipo_persona VARCHAR(20) FOR COLUMN TIPPER,
    tipo_identificacion VARCHAR(20) FOR COLUMN TIPIDE,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    nombres VARCHAR(80) FOR COLUMN NOMBRES,
    apellidos VARCHAR(80) FOR COLUMN APELLIDOS,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    fecha_nacimiento DATE FOR COLUMN FECNAC,
    direccion VARCHAR(120) FOR COLUMN DIRECCION,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    pais_residencia VARCHAR(50) FOR COLUMN PAIRES,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cumst_pk PRIMARY KEY (id_cliente)
) RCDFMT CUMST;
COMMENT ON TABLE CUMST IS 'Tabla de datos para CUMST en el módulo bancario.';
LABEL ON TABLE CUMST IS 'CUMST';

COMMENT ON COLUMN CUMST.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN CUMST.id_cliente IS 'Id Cliente';
LABEL ON COLUMN CUMST.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN CUMST.tipo_persona IS 'Campo tipo persona de la tabla CUMST.';
LABEL ON COLUMN CUMST.tipo_persona IS 'Tipo Persona';
LABEL ON COLUMN CUMST.tipo_persona TEXT IS 'Campo tipo persona de la tabla CUMST.';
COMMENT ON COLUMN CUMST.tipo_identificacion IS 'Campo tipo identificacion de la tabla CUMST.';
LABEL ON COLUMN CUMST.tipo_identificacion IS 'Tipo Identificacion';
LABEL ON COLUMN CUMST.tipo_identificacion TEXT IS 'Campo tipo identificacion de la tabla CUMST.';
COMMENT ON COLUMN CUMST.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CUMST.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CUMST.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CUMST.nombres IS 'Campo nombres de la tabla CUMST.';
LABEL ON COLUMN CUMST.nombres IS 'Nombres';
LABEL ON COLUMN CUMST.nombres TEXT IS 'Campo nombres de la tabla CUMST.';
COMMENT ON COLUMN CUMST.apellidos IS 'Campo apellidos de la tabla CUMST.';
LABEL ON COLUMN CUMST.apellidos IS 'Apellidos';
LABEL ON COLUMN CUMST.apellidos TEXT IS 'Campo apellidos de la tabla CUMST.';
COMMENT ON COLUMN CUMST.razon_social IS 'Campo razon social de la tabla CUMST.';
LABEL ON COLUMN CUMST.razon_social IS 'Razon Social';
LABEL ON COLUMN CUMST.razon_social TEXT IS 'Campo razon social de la tabla CUMST.';
COMMENT ON COLUMN CUMST.fecha_nacimiento IS 'Campo fecha nacimiento de la tabla CUMST.';
LABEL ON COLUMN CUMST.fecha_nacimiento IS 'Fecha Nacimiento';
LABEL ON COLUMN CUMST.fecha_nacimiento TEXT IS 'Campo fecha nacimiento de la tabla CUMST.';
COMMENT ON COLUMN CUMST.direccion IS 'Campo direccion de la tabla CUMST.';
LABEL ON COLUMN CUMST.direccion IS 'Direccion';
LABEL ON COLUMN CUMST.direccion TEXT IS 'Campo direccion de la tabla CUMST.';
COMMENT ON COLUMN CUMST.email IS 'Campo email de la tabla CUMST.';
LABEL ON COLUMN CUMST.email IS 'Email';
LABEL ON COLUMN CUMST.email TEXT IS 'Campo email de la tabla CUMST.';
COMMENT ON COLUMN CUMST.telefono IS 'Campo telefono de la tabla CUMST.';
LABEL ON COLUMN CUMST.telefono IS 'Telefono';
LABEL ON COLUMN CUMST.telefono TEXT IS 'Campo telefono de la tabla CUMST.';
COMMENT ON COLUMN CUMST.pais_residencia IS 'Campo pais residencia de la tabla CUMST.';
LABEL ON COLUMN CUMST.pais_residencia IS 'Pais Residencia';
LABEL ON COLUMN CUMST.pais_residencia TEXT IS 'Campo pais residencia de la tabla CUMST.';
COMMENT ON COLUMN CUMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CUMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CUMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CUMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CUMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CUMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CUMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CUMST.version_registro IS 'Version Registro';
LABEL ON COLUMN CUMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CUMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CUMST.observaciones IS 'Observaciones';
LABEL ON COLUMN CUMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CUMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CUMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CUMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CUMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CUMST.created_at IS 'Created At';
LABEL ON COLUMN CUMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CUMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CUMST.updated_at IS 'Updated At';
LABEL ON COLUMN CUMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cumst_created_at ON CUMST (created_at);

-- TABLA: CUMAD
-- ============================================================================
-- Nombre de la Tabla: CUMAD
-- DESCRIPCIÓN: Tabla de datos para CUMAD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CUMAD (
    id_cliente_operacion VARCHAR(30) NOT NULL FOR COLUMN IDCLIOPE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_persona VARCHAR(20) FOR COLUMN TIPPER,
    tipo_identificacion VARCHAR(20) FOR COLUMN TIPIDE,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    nombres VARCHAR(80) FOR COLUMN NOMBRES,
    apellidos VARCHAR(80) FOR COLUMN APELLIDOS,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    fecha_nacimiento DATE FOR COLUMN FECNAC,
    direccion VARCHAR(120) FOR COLUMN DIRECCION,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    pais_residencia VARCHAR(50) FOR COLUMN PAIRES,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cumad_pk PRIMARY KEY (id_cliente_operacion, tipo_registro, secuencia),
    FOREIGN KEY (id_cliente_operacion) REFERENCES CUMST(id_cliente) FOR COLUMN FOREIGN
) RCDFMT CUMAD;
COMMENT ON TABLE CUMAD IS 'Tabla de datos para CUMAD en el módulo bancario.';
LABEL ON TABLE CUMAD IS 'CUMAD';

COMMENT ON COLUMN CUMAD.id_cliente_operacion IS 'Identificador del cliente operacion.';
LABEL ON COLUMN CUMAD.id_cliente_operacion IS 'Id Cliente Operacion';
LABEL ON COLUMN CUMAD.id_cliente_operacion TEXT IS 'Identificador del cliente operacion.';
COMMENT ON COLUMN CUMAD.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN CUMAD.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN CUMAD.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN CUMAD.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN CUMAD.secuencia IS 'Secuencia';
LABEL ON COLUMN CUMAD.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN CUMAD.tipo_persona IS 'Campo tipo persona de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.tipo_persona IS 'Tipo Persona';
LABEL ON COLUMN CUMAD.tipo_persona TEXT IS 'Campo tipo persona de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.tipo_identificacion IS 'Campo tipo identificacion de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.tipo_identificacion IS 'Tipo Identificacion';
LABEL ON COLUMN CUMAD.tipo_identificacion TEXT IS 'Campo tipo identificacion de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CUMAD.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CUMAD.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CUMAD.nombres IS 'Campo nombres de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.nombres IS 'Nombres';
LABEL ON COLUMN CUMAD.nombres TEXT IS 'Campo nombres de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.apellidos IS 'Campo apellidos de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.apellidos IS 'Apellidos';
LABEL ON COLUMN CUMAD.apellidos TEXT IS 'Campo apellidos de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.razon_social IS 'Campo razon social de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.razon_social IS 'Razon Social';
LABEL ON COLUMN CUMAD.razon_social TEXT IS 'Campo razon social de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.fecha_nacimiento IS 'Campo fecha nacimiento de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.fecha_nacimiento IS 'Fecha Nacimiento';
LABEL ON COLUMN CUMAD.fecha_nacimiento TEXT IS 'Campo fecha nacimiento de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.direccion IS 'Campo direccion de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.direccion IS 'Direccion';
LABEL ON COLUMN CUMAD.direccion TEXT IS 'Campo direccion de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.email IS 'Campo email de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.email IS 'Email';
LABEL ON COLUMN CUMAD.email TEXT IS 'Campo email de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.telefono IS 'Campo telefono de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.telefono IS 'Telefono';
LABEL ON COLUMN CUMAD.telefono TEXT IS 'Campo telefono de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.pais_residencia IS 'Campo pais residencia de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.pais_residencia IS 'Pais Residencia';
LABEL ON COLUMN CUMAD.pais_residencia TEXT IS 'Campo pais residencia de la tabla CUMAD.';
COMMENT ON COLUMN CUMAD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CUMAD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CUMAD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CUMAD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CUMAD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CUMAD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CUMAD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CUMAD.version_registro IS 'Version Registro';
LABEL ON COLUMN CUMAD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CUMAD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CUMAD.observaciones IS 'Observaciones';
LABEL ON COLUMN CUMAD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CUMAD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CUMAD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CUMAD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CUMAD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CUMAD.created_at IS 'Created At';
LABEL ON COLUMN CUMAD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CUMAD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CUMAD.updated_at IS 'Updated At';
LABEL ON COLUMN CUMAD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';
COMMENT ON COLUMN CUMAD.FOREIGN IS 'Campo foreign de la tabla CUMAD.';
LABEL ON COLUMN CUMAD.FOREIGN IS 'Foreign';
LABEL ON COLUMN CUMAD.FOREIGN TEXT IS 'Campo foreign de la tabla CUMAD.';


CREATE INDEX idx_cumad_created_at ON CUMAD (created_at);

-- TABLA: CUMPR
-- ============================================================================
-- Nombre de la Tabla: CUMPR
-- DESCRIPCIÓN: Tabla de datos para CUMPR en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CUMPR (
    palabra VARCHAR(50) NOT NULL FOR COLUMN PALABRA,
    tipo_persona VARCHAR(20) FOR COLUMN TIPPER,
    tipo_identificacion VARCHAR(20) FOR COLUMN TIPIDE,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    nombres VARCHAR(80) FOR COLUMN NOMBRES,
    apellidos VARCHAR(80) FOR COLUMN APELLIDOS,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    fecha_nacimiento DATE FOR COLUMN FECNAC,
    direccion VARCHAR(120) FOR COLUMN DIRECCION,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    pais_residencia VARCHAR(50) FOR COLUMN PAIRES,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cumpr_pk PRIMARY KEY (palabra)
) RCDFMT CUMPR;
COMMENT ON TABLE CUMPR IS 'Tabla de datos para CUMPR en el módulo bancario.';
LABEL ON TABLE CUMPR IS 'CUMPR';

COMMENT ON COLUMN CUMPR.palabra IS 'Campo palabra de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.palabra IS 'Palabra';
LABEL ON COLUMN CUMPR.palabra TEXT IS 'Campo palabra de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.tipo_persona IS 'Campo tipo persona de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.tipo_persona IS 'Tipo Persona';
LABEL ON COLUMN CUMPR.tipo_persona TEXT IS 'Campo tipo persona de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.tipo_identificacion IS 'Campo tipo identificacion de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.tipo_identificacion IS 'Tipo Identificacion';
LABEL ON COLUMN CUMPR.tipo_identificacion TEXT IS 'Campo tipo identificacion de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CUMPR.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CUMPR.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CUMPR.nombres IS 'Campo nombres de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.nombres IS 'Nombres';
LABEL ON COLUMN CUMPR.nombres TEXT IS 'Campo nombres de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.apellidos IS 'Campo apellidos de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.apellidos IS 'Apellidos';
LABEL ON COLUMN CUMPR.apellidos TEXT IS 'Campo apellidos de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.razon_social IS 'Campo razon social de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.razon_social IS 'Razon Social';
LABEL ON COLUMN CUMPR.razon_social TEXT IS 'Campo razon social de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.fecha_nacimiento IS 'Campo fecha nacimiento de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.fecha_nacimiento IS 'Fecha Nacimiento';
LABEL ON COLUMN CUMPR.fecha_nacimiento TEXT IS 'Campo fecha nacimiento de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.direccion IS 'Campo direccion de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.direccion IS 'Direccion';
LABEL ON COLUMN CUMPR.direccion TEXT IS 'Campo direccion de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.email IS 'Campo email de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.email IS 'Email';
LABEL ON COLUMN CUMPR.email TEXT IS 'Campo email de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.telefono IS 'Campo telefono de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.telefono IS 'Telefono';
LABEL ON COLUMN CUMPR.telefono TEXT IS 'Campo telefono de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.pais_residencia IS 'Campo pais residencia de la tabla CUMPR.';
LABEL ON COLUMN CUMPR.pais_residencia IS 'Pais Residencia';
LABEL ON COLUMN CUMPR.pais_residencia TEXT IS 'Campo pais residencia de la tabla CUMPR.';
COMMENT ON COLUMN CUMPR.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CUMPR.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CUMPR.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CUMPR.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CUMPR.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CUMPR.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CUMPR.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CUMPR.version_registro IS 'Version Registro';
LABEL ON COLUMN CUMPR.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CUMPR.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CUMPR.observaciones IS 'Observaciones';
LABEL ON COLUMN CUMPR.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CUMPR.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CUMPR.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CUMPR.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CUMPR.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CUMPR.created_at IS 'Created At';
LABEL ON COLUMN CUMPR.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CUMPR.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CUMPR.updated_at IS 'Updated At';
LABEL ON COLUMN CUMPR.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cumpr_created_at ON CUMPR (created_at);

-- TABLA: CUMSD
-- ============================================================================
-- Nombre de la Tabla: CUMSD
-- DESCRIPCIÓN: Tabla de datos para CUMSD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CUMSD (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    tipo_persona VARCHAR(20) FOR COLUMN TIPPER,
    tipo_identificacion VARCHAR(20) FOR COLUMN TIPIDE,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    nombres VARCHAR(80) FOR COLUMN NOMBRES,
    apellidos VARCHAR(80) FOR COLUMN APELLIDOS,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    fecha_nacimiento DATE FOR COLUMN FECNAC,
    direccion VARCHAR(120) FOR COLUMN DIRECCION,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    pais_residencia VARCHAR(50) FOR COLUMN PAIRES,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cumsd_pk PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES CUMST(id_cliente) FOR COLUMN FOREIGN
) RCDFMT CUMSD;
COMMENT ON TABLE CUMSD IS 'Tabla de datos para CUMSD en el módulo bancario.';
LABEL ON TABLE CUMSD IS 'CUMSD';

COMMENT ON COLUMN CUMSD.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN CUMSD.id_cliente IS 'Id Cliente';
LABEL ON COLUMN CUMSD.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN CUMSD.tipo_persona IS 'Campo tipo persona de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.tipo_persona IS 'Tipo Persona';
LABEL ON COLUMN CUMSD.tipo_persona TEXT IS 'Campo tipo persona de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.tipo_identificacion IS 'Campo tipo identificacion de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.tipo_identificacion IS 'Tipo Identificacion';
LABEL ON COLUMN CUMSD.tipo_identificacion TEXT IS 'Campo tipo identificacion de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CUMSD.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CUMSD.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CUMSD.nombres IS 'Campo nombres de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.nombres IS 'Nombres';
LABEL ON COLUMN CUMSD.nombres TEXT IS 'Campo nombres de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.apellidos IS 'Campo apellidos de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.apellidos IS 'Apellidos';
LABEL ON COLUMN CUMSD.apellidos TEXT IS 'Campo apellidos de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.razon_social IS 'Campo razon social de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.razon_social IS 'Razon Social';
LABEL ON COLUMN CUMSD.razon_social TEXT IS 'Campo razon social de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.fecha_nacimiento IS 'Campo fecha nacimiento de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.fecha_nacimiento IS 'Fecha Nacimiento';
LABEL ON COLUMN CUMSD.fecha_nacimiento TEXT IS 'Campo fecha nacimiento de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.direccion IS 'Campo direccion de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.direccion IS 'Direccion';
LABEL ON COLUMN CUMSD.direccion TEXT IS 'Campo direccion de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.email IS 'Campo email de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.email IS 'Email';
LABEL ON COLUMN CUMSD.email TEXT IS 'Campo email de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.telefono IS 'Campo telefono de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.telefono IS 'Telefono';
LABEL ON COLUMN CUMSD.telefono TEXT IS 'Campo telefono de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.pais_residencia IS 'Campo pais residencia de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.pais_residencia IS 'Pais Residencia';
LABEL ON COLUMN CUMSD.pais_residencia TEXT IS 'Campo pais residencia de la tabla CUMSD.';
COMMENT ON COLUMN CUMSD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CUMSD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CUMSD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CUMSD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CUMSD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CUMSD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CUMSD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CUMSD.version_registro IS 'Version Registro';
LABEL ON COLUMN CUMSD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CUMSD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CUMSD.observaciones IS 'Observaciones';
LABEL ON COLUMN CUMSD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CUMSD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CUMSD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CUMSD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CUMSD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CUMSD.created_at IS 'Created At';
LABEL ON COLUMN CUMSD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CUMSD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CUMSD.updated_at IS 'Updated At';
LABEL ON COLUMN CUMSD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';
COMMENT ON COLUMN CUMSD.FOREIGN IS 'Campo foreign de la tabla CUMSD.';
LABEL ON COLUMN CUMSD.FOREIGN IS 'Foreign';
LABEL ON COLUMN CUMSD.FOREIGN TEXT IS 'Campo foreign de la tabla CUMSD.';


CREATE INDEX idx_cumsd_created_at ON CUMSD (created_at);

-- TABLA: SPINS
-- ============================================================================
-- Nombre de la Tabla: SPINS
-- DESCRIPCIÓN: Tabla de datos para SPINS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE SPINS (
    tipo_informacion VARCHAR(50) NOT NULL FOR COLUMN TIPINF,
    cuenta_o_cliente VARCHAR(50) NOT NULL FOR COLUMN CUEOCLI,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_persona VARCHAR(20) FOR COLUMN TIPPER,
    tipo_identificacion VARCHAR(20) FOR COLUMN TIPIDE,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    nombres VARCHAR(80) FOR COLUMN NOMBRES,
    apellidos VARCHAR(80) FOR COLUMN APELLIDOS,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    fecha_nacimiento DATE FOR COLUMN FECNAC,
    direccion VARCHAR(120) FOR COLUMN DIRECCION,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    pais_residencia VARCHAR(50) FOR COLUMN PAIRES,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_spins_pk PRIMARY KEY (tipo_informacion, cuenta_o_cliente, secuencia)
) RCDFMT SPINS;
COMMENT ON TABLE SPINS IS 'Tabla de datos para SPINS en el módulo bancario.';
LABEL ON TABLE SPINS IS 'SPINS';

COMMENT ON COLUMN SPINS.tipo_informacion IS 'Campo tipo informacion de la tabla SPINS.';
LABEL ON COLUMN SPINS.tipo_informacion IS 'Tipo Informacion';
LABEL ON COLUMN SPINS.tipo_informacion TEXT IS 'Campo tipo informacion de la tabla SPINS.';
COMMENT ON COLUMN SPINS.cuenta_o_cliente IS 'Cuenta o cliente relacionado.';
LABEL ON COLUMN SPINS.cuenta_o_cliente IS 'Cuenta O Cliente';
LABEL ON COLUMN SPINS.cuenta_o_cliente TEXT IS 'Cuenta o cliente relacionado.';
COMMENT ON COLUMN SPINS.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN SPINS.secuencia IS 'Secuencia';
LABEL ON COLUMN SPINS.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN SPINS.tipo_persona IS 'Campo tipo persona de la tabla SPINS.';
LABEL ON COLUMN SPINS.tipo_persona IS 'Tipo Persona';
LABEL ON COLUMN SPINS.tipo_persona TEXT IS 'Campo tipo persona de la tabla SPINS.';
COMMENT ON COLUMN SPINS.tipo_identificacion IS 'Campo tipo identificacion de la tabla SPINS.';
LABEL ON COLUMN SPINS.tipo_identificacion IS 'Tipo Identificacion';
LABEL ON COLUMN SPINS.tipo_identificacion TEXT IS 'Campo tipo identificacion de la tabla SPINS.';
COMMENT ON COLUMN SPINS.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN SPINS.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN SPINS.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN SPINS.nombres IS 'Campo nombres de la tabla SPINS.';
LABEL ON COLUMN SPINS.nombres IS 'Nombres';
LABEL ON COLUMN SPINS.nombres TEXT IS 'Campo nombres de la tabla SPINS.';
COMMENT ON COLUMN SPINS.apellidos IS 'Campo apellidos de la tabla SPINS.';
LABEL ON COLUMN SPINS.apellidos IS 'Apellidos';
LABEL ON COLUMN SPINS.apellidos TEXT IS 'Campo apellidos de la tabla SPINS.';
COMMENT ON COLUMN SPINS.razon_social IS 'Campo razon social de la tabla SPINS.';
LABEL ON COLUMN SPINS.razon_social IS 'Razon Social';
LABEL ON COLUMN SPINS.razon_social TEXT IS 'Campo razon social de la tabla SPINS.';
COMMENT ON COLUMN SPINS.fecha_nacimiento IS 'Campo fecha nacimiento de la tabla SPINS.';
LABEL ON COLUMN SPINS.fecha_nacimiento IS 'Fecha Nacimiento';
LABEL ON COLUMN SPINS.fecha_nacimiento TEXT IS 'Campo fecha nacimiento de la tabla SPINS.';
COMMENT ON COLUMN SPINS.direccion IS 'Campo direccion de la tabla SPINS.';
LABEL ON COLUMN SPINS.direccion IS 'Direccion';
LABEL ON COLUMN SPINS.direccion TEXT IS 'Campo direccion de la tabla SPINS.';
COMMENT ON COLUMN SPINS.email IS 'Campo email de la tabla SPINS.';
LABEL ON COLUMN SPINS.email IS 'Email';
LABEL ON COLUMN SPINS.email TEXT IS 'Campo email de la tabla SPINS.';
COMMENT ON COLUMN SPINS.telefono IS 'Campo telefono de la tabla SPINS.';
LABEL ON COLUMN SPINS.telefono IS 'Telefono';
LABEL ON COLUMN SPINS.telefono TEXT IS 'Campo telefono de la tabla SPINS.';
COMMENT ON COLUMN SPINS.pais_residencia IS 'Campo pais residencia de la tabla SPINS.';
LABEL ON COLUMN SPINS.pais_residencia IS 'Pais Residencia';
LABEL ON COLUMN SPINS.pais_residencia TEXT IS 'Campo pais residencia de la tabla SPINS.';
COMMENT ON COLUMN SPINS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN SPINS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN SPINS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN SPINS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN SPINS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN SPINS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN SPINS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN SPINS.version_registro IS 'Version Registro';
LABEL ON COLUMN SPINS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN SPINS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN SPINS.observaciones IS 'Observaciones';
LABEL ON COLUMN SPINS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN SPINS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN SPINS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN SPINS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN SPINS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN SPINS.created_at IS 'Created At';
LABEL ON COLUMN SPINS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN SPINS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN SPINS.updated_at IS 'Updated At';
LABEL ON COLUMN SPINS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_spins_created_at ON SPINS (created_at);

-- ============================================================================
-- MODULO 3: CUENTAS DE DETALLE/CHEQUERAS (18 tablas)
-- ============================================================================

-- TABLA: ACMST
-- ============================================================================
-- Nombre de la Tabla: ACMST
-- DESCRIPCIÓN: Tabla de datos para ACMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE ACMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_acmst_pk PRIMARY KEY (id)
) RCDFMT ACMST;
COMMENT ON TABLE ACMST IS 'Tabla de datos para ACMST en el módulo bancario.';
LABEL ON TABLE ACMST IS 'ACMST';

COMMENT ON COLUMN ACMST.id IS 'Identificador único del registro.';
LABEL ON COLUMN ACMST.id IS 'Id';
LABEL ON COLUMN ACMST.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN ACMST.fecha_apertura IS 'Campo fecha apertura de la tabla ACMST.';
LABEL ON COLUMN ACMST.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN ACMST.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla ACMST.';
COMMENT ON COLUMN ACMST.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla ACMST.';
LABEL ON COLUMN ACMST.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN ACMST.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla ACMST.';
COMMENT ON COLUMN ACMST.saldo_actual IS 'Campo saldo actual de la tabla ACMST.';
LABEL ON COLUMN ACMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN ACMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla ACMST.';
COMMENT ON COLUMN ACMST.saldo_disponible IS 'Campo saldo disponible de la tabla ACMST.';
LABEL ON COLUMN ACMST.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN ACMST.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla ACMST.';
COMMENT ON COLUMN ACMST.limite_sobregiro IS 'Campo limite sobregiro de la tabla ACMST.';
LABEL ON COLUMN ACMST.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN ACMST.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla ACMST.';
COMMENT ON COLUMN ACMST.estado_cuenta IS 'Campo estado cuenta de la tabla ACMST.';
LABEL ON COLUMN ACMST.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN ACMST.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla ACMST.';
COMMENT ON COLUMN ACMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN ACMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN ACMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN ACMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN ACMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN ACMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN ACMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN ACMST.version_registro IS 'Version Registro';
LABEL ON COLUMN ACMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN ACMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN ACMST.observaciones IS 'Observaciones';
LABEL ON COLUMN ACMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN ACMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN ACMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN ACMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN ACMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN ACMST.created_at IS 'Created At';
LABEL ON COLUMN ACMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN ACMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN ACMST.updated_at IS 'Updated At';
LABEL ON COLUMN ACMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_acmst_created_at ON ACMST (created_at);

-- TABLA: STPMT
-- ============================================================================
-- Nombre de la Tabla: STPMT
-- DESCRIPCIÓN: Tabla de datos para STPMT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE STPMT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_stpmt_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, secuencia)
) RCDFMT STPMT;
COMMENT ON TABLE STPMT IS 'Tabla de datos para STPMT en el módulo bancario.';
LABEL ON TABLE STPMT IS 'STPMT';

COMMENT ON COLUMN STPMT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN STPMT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN STPMT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN STPMT.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN STPMT.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN STPMT.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN STPMT.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN STPMT.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN STPMT.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN STPMT.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN STPMT.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN STPMT.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN STPMT.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN STPMT.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN STPMT.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN STPMT.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN STPMT.secuencia IS 'Secuencia';
LABEL ON COLUMN STPMT.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN STPMT.fecha_apertura IS 'Campo fecha apertura de la tabla STPMT.';
LABEL ON COLUMN STPMT.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN STPMT.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla STPMT.';
COMMENT ON COLUMN STPMT.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla STPMT.';
LABEL ON COLUMN STPMT.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN STPMT.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla STPMT.';
COMMENT ON COLUMN STPMT.saldo_actual IS 'Campo saldo actual de la tabla STPMT.';
LABEL ON COLUMN STPMT.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN STPMT.saldo_actual TEXT IS 'Campo saldo actual de la tabla STPMT.';
COMMENT ON COLUMN STPMT.saldo_disponible IS 'Campo saldo disponible de la tabla STPMT.';
LABEL ON COLUMN STPMT.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN STPMT.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla STPMT.';
COMMENT ON COLUMN STPMT.limite_sobregiro IS 'Campo limite sobregiro de la tabla STPMT.';
LABEL ON COLUMN STPMT.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN STPMT.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla STPMT.';
COMMENT ON COLUMN STPMT.estado_cuenta IS 'Campo estado cuenta de la tabla STPMT.';
LABEL ON COLUMN STPMT.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN STPMT.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla STPMT.';
COMMENT ON COLUMN STPMT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN STPMT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN STPMT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN STPMT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN STPMT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN STPMT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN STPMT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN STPMT.version_registro IS 'Version Registro';
LABEL ON COLUMN STPMT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN STPMT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN STPMT.observaciones IS 'Observaciones';
LABEL ON COLUMN STPMT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN STPMT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN STPMT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN STPMT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN STPMT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN STPMT.created_at IS 'Created At';
LABEL ON COLUMN STPMT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN STPMT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN STPMT.updated_at IS 'Updated At';
LABEL ON COLUMN STPMT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_stpmt_created_at ON STPMT (created_at);

-- TABLA: UNCOL
-- ============================================================================
-- Nombre de la Tabla: UNCOL
-- DESCRIPCIÓN: Tabla de datos para UNCOL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE UNCOL (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_uncol_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
) RCDFMT UNCOL;
COMMENT ON TABLE UNCOL IS 'Tabla de datos para UNCOL en el módulo bancario.';
LABEL ON TABLE UNCOL IS 'UNCOL';

COMMENT ON COLUMN UNCOL.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN UNCOL.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN UNCOL.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN UNCOL.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN UNCOL.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN UNCOL.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN UNCOL.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN UNCOL.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN UNCOL.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN UNCOL.fecha_apertura IS 'Campo fecha apertura de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN UNCOL.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN UNCOL.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.saldo_actual IS 'Campo saldo actual de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN UNCOL.saldo_actual TEXT IS 'Campo saldo actual de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.saldo_disponible IS 'Campo saldo disponible de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN UNCOL.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.limite_sobregiro IS 'Campo limite sobregiro de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN UNCOL.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.estado_cuenta IS 'Campo estado cuenta de la tabla UNCOL.';
LABEL ON COLUMN UNCOL.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN UNCOL.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla UNCOL.';
COMMENT ON COLUMN UNCOL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN UNCOL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN UNCOL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN UNCOL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN UNCOL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN UNCOL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN UNCOL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN UNCOL.version_registro IS 'Version Registro';
LABEL ON COLUMN UNCOL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN UNCOL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN UNCOL.observaciones IS 'Observaciones';
LABEL ON COLUMN UNCOL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN UNCOL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN UNCOL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN UNCOL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN UNCOL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN UNCOL.created_at IS 'Created At';
LABEL ON COLUMN UNCOL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN UNCOL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN UNCOL.updated_at IS 'Updated At';
LABEL ON COLUMN UNCOL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_uncol_created_at ON UNCOL (created_at);

-- TABLA: PBTRN
-- ============================================================================
-- Nombre de la Tabla: PBTRN
-- DESCRIPCIÓN: Tabla de datos para PBTRN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PBTRN (
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    hora TIME NOT NULL FOR COLUMN HORA,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_pbtrn_pk PRIMARY KEY (numero_cuenta, fecha, hora)
) RCDFMT PBTRN;
COMMENT ON TABLE PBTRN IS 'Tabla de datos para PBTRN en el módulo bancario.';
LABEL ON TABLE PBTRN IS 'PBTRN';

COMMENT ON COLUMN PBTRN.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN PBTRN.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN PBTRN.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN PBTRN.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN PBTRN.fecha IS 'Fecha';
LABEL ON COLUMN PBTRN.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN PBTRN.hora IS 'Campo hora de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.hora IS 'Hora';
LABEL ON COLUMN PBTRN.hora TEXT IS 'Campo hora de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.fecha_apertura IS 'Campo fecha apertura de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN PBTRN.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN PBTRN.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.saldo_actual IS 'Campo saldo actual de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN PBTRN.saldo_actual TEXT IS 'Campo saldo actual de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.saldo_disponible IS 'Campo saldo disponible de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN PBTRN.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.limite_sobregiro IS 'Campo limite sobregiro de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN PBTRN.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.estado_cuenta IS 'Campo estado cuenta de la tabla PBTRN.';
LABEL ON COLUMN PBTRN.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN PBTRN.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla PBTRN.';
COMMENT ON COLUMN PBTRN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PBTRN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PBTRN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PBTRN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PBTRN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PBTRN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PBTRN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PBTRN.version_registro IS 'Version Registro';
LABEL ON COLUMN PBTRN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PBTRN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PBTRN.observaciones IS 'Observaciones';
LABEL ON COLUMN PBTRN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PBTRN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PBTRN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PBTRN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PBTRN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PBTRN.created_at IS 'Created At';
LABEL ON COLUMN PBTRN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PBTRN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PBTRN.updated_at IS 'Updated At';
LABEL ON COLUMN PBTRN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_pbtrn_fecha ON PBTRN (fecha);
CREATE INDEX idx_pbtrn_created_at ON PBTRN (created_at);

-- TABLA: OFMST
-- ============================================================================
-- Nombre de la Tabla: OFMST
-- DESCRIPCIÓN: Tabla de datos para OFMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE OFMST (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    numero_cheque VARCHAR(30) NOT NULL FOR COLUMN NUMCHE,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ofmst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cheque)
) RCDFMT OFMST;
COMMENT ON TABLE OFMST IS 'Tabla de datos para OFMST en el módulo bancario.';
LABEL ON TABLE OFMST IS 'OFMST';

COMMENT ON COLUMN OFMST.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN OFMST.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN OFMST.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN OFMST.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN OFMST.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN OFMST.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN OFMST.numero_cheque IS 'Número de cheque.';
LABEL ON COLUMN OFMST.numero_cheque IS 'Numero Cheque';
LABEL ON COLUMN OFMST.numero_cheque TEXT IS 'Número de cheque.';
COMMENT ON COLUMN OFMST.fecha_apertura IS 'Campo fecha apertura de la tabla OFMST.';
LABEL ON COLUMN OFMST.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN OFMST.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla OFMST.';
COMMENT ON COLUMN OFMST.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla OFMST.';
LABEL ON COLUMN OFMST.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN OFMST.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla OFMST.';
COMMENT ON COLUMN OFMST.saldo_actual IS 'Campo saldo actual de la tabla OFMST.';
LABEL ON COLUMN OFMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN OFMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla OFMST.';
COMMENT ON COLUMN OFMST.saldo_disponible IS 'Campo saldo disponible de la tabla OFMST.';
LABEL ON COLUMN OFMST.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN OFMST.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla OFMST.';
COMMENT ON COLUMN OFMST.limite_sobregiro IS 'Campo limite sobregiro de la tabla OFMST.';
LABEL ON COLUMN OFMST.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN OFMST.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla OFMST.';
COMMENT ON COLUMN OFMST.estado_cuenta IS 'Campo estado cuenta de la tabla OFMST.';
LABEL ON COLUMN OFMST.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN OFMST.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla OFMST.';
COMMENT ON COLUMN OFMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN OFMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN OFMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN OFMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN OFMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN OFMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN OFMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN OFMST.version_registro IS 'Version Registro';
LABEL ON COLUMN OFMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN OFMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN OFMST.observaciones IS 'Observaciones';
LABEL ON COLUMN OFMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN OFMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN OFMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN OFMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN OFMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN OFMST.created_at IS 'Created At';
LABEL ON COLUMN OFMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN OFMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN OFMST.updated_at IS 'Updated At';
LABEL ON COLUMN OFMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ofmst_created_at ON OFMST (created_at);

-- TABLA: RCLNB
-- ============================================================================
-- Nombre de la Tabla: RCLNB
-- DESCRIPCIÓN: Tabla de datos para RCLNB en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE RCLNB (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_rclnb_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, fecha)
) RCDFMT RCLNB;
COMMENT ON TABLE RCLNB IS 'Tabla de datos para RCLNB en el módulo bancario.';
LABEL ON TABLE RCLNB IS 'RCLNB';

COMMENT ON COLUMN RCLNB.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN RCLNB.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN RCLNB.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN RCLNB.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN RCLNB.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN RCLNB.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN RCLNB.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN RCLNB.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN RCLNB.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN RCLNB.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN RCLNB.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN RCLNB.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN RCLNB.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN RCLNB.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN RCLNB.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN RCLNB.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN RCLNB.fecha IS 'Fecha';
LABEL ON COLUMN RCLNB.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN RCLNB.fecha_apertura IS 'Campo fecha apertura de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN RCLNB.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN RCLNB.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.saldo_actual IS 'Campo saldo actual de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN RCLNB.saldo_actual TEXT IS 'Campo saldo actual de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.saldo_disponible IS 'Campo saldo disponible de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN RCLNB.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.limite_sobregiro IS 'Campo limite sobregiro de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN RCLNB.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.estado_cuenta IS 'Campo estado cuenta de la tabla RCLNB.';
LABEL ON COLUMN RCLNB.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN RCLNB.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla RCLNB.';
COMMENT ON COLUMN RCLNB.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN RCLNB.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN RCLNB.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN RCLNB.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN RCLNB.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN RCLNB.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN RCLNB.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN RCLNB.version_registro IS 'Version Registro';
LABEL ON COLUMN RCLNB.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN RCLNB.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN RCLNB.observaciones IS 'Observaciones';
LABEL ON COLUMN RCLNB.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN RCLNB.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN RCLNB.estado_registro IS 'Estado Registro';
LABEL ON COLUMN RCLNB.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN RCLNB.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN RCLNB.created_at IS 'Created At';
LABEL ON COLUMN RCLNB.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN RCLNB.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN RCLNB.updated_at IS 'Updated At';
LABEL ON COLUMN RCLNB.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_rclnb_fecha ON RCLNB (fecha);
CREATE INDEX idx_rclnb_created_at ON RCLNB (created_at);

-- TABLA: TLMST
-- ============================================================================
-- Nombre de la Tabla: TLMST
-- DESCRIPCIÓN: Tabla de datos para TLMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE TLMST (
    codigo_de_cajero VARCHAR(20) NOT NULL FOR COLUMN CODDECAJ,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_tlmst_pk PRIMARY KEY (codigo_de_cajero, codigo_moneda)
) RCDFMT TLMST;
COMMENT ON TABLE TLMST IS 'Tabla de datos para TLMST en el módulo bancario.';
LABEL ON TABLE TLMST IS 'TLMST';

COMMENT ON COLUMN TLMST.codigo_de_cajero IS 'Código del de cajero.';
LABEL ON COLUMN TLMST.codigo_de_cajero IS 'Codigo De Cajero';
LABEL ON COLUMN TLMST.codigo_de_cajero TEXT IS 'Código del de cajero.';
COMMENT ON COLUMN TLMST.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN TLMST.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN TLMST.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN TLMST.fecha_apertura IS 'Campo fecha apertura de la tabla TLMST.';
LABEL ON COLUMN TLMST.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN TLMST.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla TLMST.';
COMMENT ON COLUMN TLMST.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla TLMST.';
LABEL ON COLUMN TLMST.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN TLMST.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla TLMST.';
COMMENT ON COLUMN TLMST.saldo_actual IS 'Campo saldo actual de la tabla TLMST.';
LABEL ON COLUMN TLMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN TLMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla TLMST.';
COMMENT ON COLUMN TLMST.saldo_disponible IS 'Campo saldo disponible de la tabla TLMST.';
LABEL ON COLUMN TLMST.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN TLMST.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla TLMST.';
COMMENT ON COLUMN TLMST.limite_sobregiro IS 'Campo limite sobregiro de la tabla TLMST.';
LABEL ON COLUMN TLMST.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN TLMST.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla TLMST.';
COMMENT ON COLUMN TLMST.estado_cuenta IS 'Campo estado cuenta de la tabla TLMST.';
LABEL ON COLUMN TLMST.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN TLMST.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla TLMST.';
COMMENT ON COLUMN TLMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN TLMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN TLMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN TLMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN TLMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN TLMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN TLMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN TLMST.version_registro IS 'Version Registro';
LABEL ON COLUMN TLMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN TLMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN TLMST.observaciones IS 'Observaciones';
LABEL ON COLUMN TLMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN TLMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN TLMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN TLMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN TLMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN TLMST.created_at IS 'Created At';
LABEL ON COLUMN TLMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN TLMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN TLMST.updated_at IS 'Updated At';
LABEL ON COLUMN TLMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_tlmst_created_at ON TLMST (created_at);

-- TABLA: TDRCR
-- ============================================================================
-- Nombre de la Tabla: TDRCR
-- DESCRIPCIÓN: Tabla de datos para TDRCR en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE TDRCR (
    codigo_de_transaccion VARCHAR(20) NOT NULL FOR COLUMN CODDETRA,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_tdrcr_pk PRIMARY KEY (codigo_de_transaccion)
) RCDFMT TDRCR;
COMMENT ON TABLE TDRCR IS 'Tabla de datos para TDRCR en el módulo bancario.';
LABEL ON TABLE TDRCR IS 'TDRCR';

COMMENT ON COLUMN TDRCR.codigo_de_transaccion IS 'Código del de transaccion.';
LABEL ON COLUMN TDRCR.codigo_de_transaccion IS 'Codigo De Transaccion';
LABEL ON COLUMN TDRCR.codigo_de_transaccion TEXT IS 'Código del de transaccion.';
COMMENT ON COLUMN TDRCR.fecha_apertura IS 'Campo fecha apertura de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN TDRCR.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN TDRCR.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.saldo_actual IS 'Campo saldo actual de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN TDRCR.saldo_actual TEXT IS 'Campo saldo actual de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.saldo_disponible IS 'Campo saldo disponible de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN TDRCR.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.limite_sobregiro IS 'Campo limite sobregiro de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN TDRCR.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.estado_cuenta IS 'Campo estado cuenta de la tabla TDRCR.';
LABEL ON COLUMN TDRCR.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN TDRCR.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla TDRCR.';
COMMENT ON COLUMN TDRCR.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN TDRCR.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN TDRCR.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN TDRCR.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN TDRCR.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN TDRCR.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN TDRCR.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN TDRCR.version_registro IS 'Version Registro';
LABEL ON COLUMN TDRCR.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN TDRCR.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN TDRCR.observaciones IS 'Observaciones';
LABEL ON COLUMN TDRCR.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN TDRCR.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN TDRCR.estado_registro IS 'Estado Registro';
LABEL ON COLUMN TDRCR.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN TDRCR.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN TDRCR.created_at IS 'Created At';
LABEL ON COLUMN TDRCR.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN TDRCR.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN TDRCR.updated_at IS 'Updated At';
LABEL ON COLUMN TDRCR.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_tdrcr_created_at ON TDRCR (created_at);

-- TABLA: AUDIT
-- ============================================================================
-- Nombre de la Tabla: AUDIT
-- DESCRIPCIÓN: Tabla de datos para AUDIT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE AUDIT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_cajero VARCHAR(20) NOT NULL FOR COLUMN CODCAJ,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    referencia VARCHAR(50) NOT NULL FOR COLUMN REFERENCIA,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_audit_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_cajero, codigo_moneda, referencia)
) RCDFMT AUDIT;
COMMENT ON TABLE AUDIT IS 'Tabla de datos para AUDIT en el módulo bancario.';
LABEL ON TABLE AUDIT IS 'AUDIT';

COMMENT ON COLUMN AUDIT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN AUDIT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN AUDIT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN AUDIT.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN AUDIT.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN AUDIT.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN AUDIT.codigo_cajero IS 'Código del cajero.';
LABEL ON COLUMN AUDIT.codigo_cajero IS 'Codigo Cajero';
LABEL ON COLUMN AUDIT.codigo_cajero TEXT IS 'Código del cajero.';
COMMENT ON COLUMN AUDIT.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN AUDIT.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN AUDIT.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN AUDIT.referencia IS 'Referencia adicional del registro.';
LABEL ON COLUMN AUDIT.referencia IS 'Referencia';
LABEL ON COLUMN AUDIT.referencia TEXT IS 'Referencia adicional del registro.';
COMMENT ON COLUMN AUDIT.fecha_apertura IS 'Campo fecha apertura de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN AUDIT.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN AUDIT.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.saldo_actual IS 'Campo saldo actual de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN AUDIT.saldo_actual TEXT IS 'Campo saldo actual de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.saldo_disponible IS 'Campo saldo disponible de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN AUDIT.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.limite_sobregiro IS 'Campo limite sobregiro de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN AUDIT.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.estado_cuenta IS 'Campo estado cuenta de la tabla AUDIT.';
LABEL ON COLUMN AUDIT.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN AUDIT.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla AUDIT.';
COMMENT ON COLUMN AUDIT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN AUDIT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN AUDIT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN AUDIT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN AUDIT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN AUDIT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN AUDIT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN AUDIT.version_registro IS 'Version Registro';
LABEL ON COLUMN AUDIT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN AUDIT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN AUDIT.observaciones IS 'Observaciones';
LABEL ON COLUMN AUDIT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN AUDIT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN AUDIT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN AUDIT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN AUDIT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN AUDIT.created_at IS 'Created At';
LABEL ON COLUMN AUDIT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN AUDIT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN AUDIT.updated_at IS 'Updated At';
LABEL ON COLUMN AUDIT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_audit_created_at ON AUDIT (created_at);

-- TABLA: CHMST
-- ============================================================================
-- Nombre de la Tabla: CHMST
-- DESCRIPCIÓN: Tabla de datos para CHMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CHMST (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    cheque_inicial VARCHAR(50) NOT NULL FOR COLUMN CHEINI,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_chmst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_cuenta, cheque_inicial)
) RCDFMT CHMST;
COMMENT ON TABLE CHMST IS 'Tabla de datos para CHMST en el módulo bancario.';
LABEL ON TABLE CHMST IS 'CHMST';

COMMENT ON COLUMN CHMST.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CHMST.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CHMST.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CHMST.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN CHMST.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN CHMST.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN CHMST.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN CHMST.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN CHMST.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN CHMST.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN CHMST.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN CHMST.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN CHMST.cheque_inicial IS 'Campo cheque inicial de la tabla CHMST.';
LABEL ON COLUMN CHMST.cheque_inicial IS 'Cheque Inicial';
LABEL ON COLUMN CHMST.cheque_inicial TEXT IS 'Campo cheque inicial de la tabla CHMST.';
COMMENT ON COLUMN CHMST.fecha_apertura IS 'Campo fecha apertura de la tabla CHMST.';
LABEL ON COLUMN CHMST.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CHMST.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CHMST.';
COMMENT ON COLUMN CHMST.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CHMST.';
LABEL ON COLUMN CHMST.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CHMST.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CHMST.';
COMMENT ON COLUMN CHMST.saldo_actual IS 'Campo saldo actual de la tabla CHMST.';
LABEL ON COLUMN CHMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CHMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla CHMST.';
COMMENT ON COLUMN CHMST.saldo_disponible IS 'Campo saldo disponible de la tabla CHMST.';
LABEL ON COLUMN CHMST.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CHMST.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CHMST.';
COMMENT ON COLUMN CHMST.limite_sobregiro IS 'Campo limite sobregiro de la tabla CHMST.';
LABEL ON COLUMN CHMST.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CHMST.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CHMST.';
COMMENT ON COLUMN CHMST.estado_cuenta IS 'Campo estado cuenta de la tabla CHMST.';
LABEL ON COLUMN CHMST.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CHMST.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CHMST.';
COMMENT ON COLUMN CHMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CHMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CHMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CHMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CHMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CHMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CHMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CHMST.version_registro IS 'Version Registro';
LABEL ON COLUMN CHMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CHMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CHMST.observaciones IS 'Observaciones';
LABEL ON COLUMN CHMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CHMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CHMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CHMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CHMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CHMST.created_at IS 'Created At';
LABEL ON COLUMN CHMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CHMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CHMST.updated_at IS 'Updated At';
LABEL ON COLUMN CHMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_chmst_created_at ON CHMST (created_at);

-- TABLA: CHPER
-- ============================================================================
-- Nombre de la Tabla: CHPER
-- DESCRIPCIÓN: Tabla de datos para CHPER en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CHPER (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_chper_pk PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
) RCDFMT CHPER;
COMMENT ON TABLE CHPER IS 'Tabla de datos para CHPER en el módulo bancario.';
LABEL ON TABLE CHPER IS 'CHPER';

COMMENT ON COLUMN CHPER.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CHPER.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CHPER.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CHPER.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN CHPER.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN CHPER.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN CHPER.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN CHPER.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN CHPER.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN CHPER.fecha_apertura IS 'Campo fecha apertura de la tabla CHPER.';
LABEL ON COLUMN CHPER.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CHPER.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CHPER.';
COMMENT ON COLUMN CHPER.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CHPER.';
LABEL ON COLUMN CHPER.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CHPER.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CHPER.';
COMMENT ON COLUMN CHPER.saldo_actual IS 'Campo saldo actual de la tabla CHPER.';
LABEL ON COLUMN CHPER.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CHPER.saldo_actual TEXT IS 'Campo saldo actual de la tabla CHPER.';
COMMENT ON COLUMN CHPER.saldo_disponible IS 'Campo saldo disponible de la tabla CHPER.';
LABEL ON COLUMN CHPER.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CHPER.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CHPER.';
COMMENT ON COLUMN CHPER.limite_sobregiro IS 'Campo limite sobregiro de la tabla CHPER.';
LABEL ON COLUMN CHPER.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CHPER.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CHPER.';
COMMENT ON COLUMN CHPER.estado_cuenta IS 'Campo estado cuenta de la tabla CHPER.';
LABEL ON COLUMN CHPER.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CHPER.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CHPER.';
COMMENT ON COLUMN CHPER.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CHPER.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CHPER.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CHPER.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CHPER.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CHPER.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CHPER.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CHPER.version_registro IS 'Version Registro';
LABEL ON COLUMN CHPER.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CHPER.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CHPER.observaciones IS 'Observaciones';
LABEL ON COLUMN CHPER.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CHPER.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CHPER.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CHPER.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CHPER.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CHPER.created_at IS 'Created At';
LABEL ON COLUMN CHPER.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CHPER.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CHPER.updated_at IS 'Updated At';
LABEL ON COLUMN CHPER.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_chper_created_at ON CHPER (created_at);

-- TABLA: CHSTS
-- ============================================================================
-- Nombre de la Tabla: CHSTS
-- DESCRIPCIÓN: Tabla de datos para CHSTS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CHSTS (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_chsts_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta)
) RCDFMT CHSTS;
COMMENT ON TABLE CHSTS IS 'Tabla de datos para CHSTS en el módulo bancario.';
LABEL ON TABLE CHSTS IS 'CHSTS';

COMMENT ON COLUMN CHSTS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CHSTS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CHSTS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CHSTS.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN CHSTS.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN CHSTS.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN CHSTS.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN CHSTS.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN CHSTS.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN CHSTS.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN CHSTS.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN CHSTS.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN CHSTS.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN CHSTS.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN CHSTS.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN CHSTS.fecha_apertura IS 'Campo fecha apertura de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CHSTS.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CHSTS.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.saldo_actual IS 'Campo saldo actual de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CHSTS.saldo_actual TEXT IS 'Campo saldo actual de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.saldo_disponible IS 'Campo saldo disponible de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CHSTS.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.limite_sobregiro IS 'Campo limite sobregiro de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CHSTS.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.estado_cuenta IS 'Campo estado cuenta de la tabla CHSTS.';
LABEL ON COLUMN CHSTS.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CHSTS.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CHSTS.';
COMMENT ON COLUMN CHSTS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CHSTS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CHSTS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CHSTS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CHSTS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CHSTS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CHSTS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CHSTS.version_registro IS 'Version Registro';
LABEL ON COLUMN CHSTS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CHSTS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CHSTS.observaciones IS 'Observaciones';
LABEL ON COLUMN CHSTS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CHSTS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CHSTS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CHSTS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CHSTS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CHSTS.created_at IS 'Created At';
LABEL ON COLUMN CHSTS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CHSTS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CHSTS.updated_at IS 'Updated At';
LABEL ON COLUMN CHSTS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_chsts_created_at ON CHSTS (created_at);

-- TABLA: DEVOL
-- ============================================================================
-- Nombre de la Tabla: DEVOL
-- DESCRIPCIÓN: Tabla de datos para DEVOL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DEVOL (
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    numero_cheque VARCHAR(30) NOT NULL FOR COLUMN NUMCHE,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_devol_pk PRIMARY KEY (numero_cuenta, numero_cheque)
) RCDFMT DEVOL;
COMMENT ON TABLE DEVOL IS 'Tabla de datos para DEVOL en el módulo bancario.';
LABEL ON TABLE DEVOL IS 'DEVOL';

COMMENT ON COLUMN DEVOL.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN DEVOL.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN DEVOL.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN DEVOL.numero_cheque IS 'Número de cheque.';
LABEL ON COLUMN DEVOL.numero_cheque IS 'Numero Cheque';
LABEL ON COLUMN DEVOL.numero_cheque TEXT IS 'Número de cheque.';
COMMENT ON COLUMN DEVOL.fecha_apertura IS 'Campo fecha apertura de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN DEVOL.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN DEVOL.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.saldo_actual IS 'Campo saldo actual de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DEVOL.saldo_actual TEXT IS 'Campo saldo actual de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.saldo_disponible IS 'Campo saldo disponible de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN DEVOL.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.limite_sobregiro IS 'Campo limite sobregiro de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN DEVOL.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.estado_cuenta IS 'Campo estado cuenta de la tabla DEVOL.';
LABEL ON COLUMN DEVOL.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN DEVOL.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla DEVOL.';
COMMENT ON COLUMN DEVOL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DEVOL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DEVOL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DEVOL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DEVOL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DEVOL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DEVOL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DEVOL.version_registro IS 'Version Registro';
LABEL ON COLUMN DEVOL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DEVOL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DEVOL.observaciones IS 'Observaciones';
LABEL ON COLUMN DEVOL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DEVOL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DEVOL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DEVOL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DEVOL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DEVOL.created_at IS 'Created At';
LABEL ON COLUMN DEVOL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DEVOL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DEVOL.updated_at IS 'Updated At';
LABEL ON COLUMN DEVOL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_devol_created_at ON DEVOL (created_at);

-- TABLA: CMRIN
-- ============================================================================
-- Nombre de la Tabla: CMRIN
-- DESCRIPCIÓN: Tabla de datos para CMRIN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CMRIN (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    sucursal_moneda VARCHAR(50) NOT NULL FOR COLUMN SUCMON,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    monto DECIMAL(18,2) NOT NULL FOR COLUMN MONTO,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cmrin_pk PRIMARY KEY (codigo_banco, sucursal_moneda, numero_cuenta, monto)
) RCDFMT CMRIN;
COMMENT ON TABLE CMRIN IS 'Tabla de datos para CMRIN en el módulo bancario.';
LABEL ON TABLE CMRIN IS 'CMRIN';

COMMENT ON COLUMN CMRIN.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CMRIN.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CMRIN.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CMRIN.sucursal_moneda IS 'Campo sucursal moneda de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.sucursal_moneda IS 'Sucursal Moneda';
LABEL ON COLUMN CMRIN.sucursal_moneda TEXT IS 'Campo sucursal moneda de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN CMRIN.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN CMRIN.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN CMRIN.monto IS 'Campo monto de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.monto IS 'Monto';
LABEL ON COLUMN CMRIN.monto TEXT IS 'Campo monto de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.fecha_apertura IS 'Campo fecha apertura de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CMRIN.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CMRIN.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.saldo_actual IS 'Campo saldo actual de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CMRIN.saldo_actual TEXT IS 'Campo saldo actual de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.saldo_disponible IS 'Campo saldo disponible de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CMRIN.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.limite_sobregiro IS 'Campo limite sobregiro de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CMRIN.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.estado_cuenta IS 'Campo estado cuenta de la tabla CMRIN.';
LABEL ON COLUMN CMRIN.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CMRIN.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CMRIN.';
COMMENT ON COLUMN CMRIN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CMRIN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CMRIN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CMRIN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CMRIN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CMRIN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CMRIN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CMRIN.version_registro IS 'Version Registro';
LABEL ON COLUMN CMRIN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CMRIN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CMRIN.observaciones IS 'Observaciones';
LABEL ON COLUMN CMRIN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CMRIN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CMRIN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CMRIN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CMRIN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CMRIN.created_at IS 'Created At';
LABEL ON COLUMN CMRIN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CMRIN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CMRIN.updated_at IS 'Updated At';
LABEL ON COLUMN CMRIN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cmrin_created_at ON CMRIN (created_at);

-- TABLA: OVDRF
-- ============================================================================
-- Nombre de la Tabla: OVDRF
-- DESCRIPCIÓN: Tabla de datos para OVDRF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE OVDRF (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ovdrf_pk PRIMARY KEY (id)
) RCDFMT OVDRF;
COMMENT ON TABLE OVDRF IS 'Tabla de datos para OVDRF en el módulo bancario.';
LABEL ON TABLE OVDRF IS 'OVDRF';

COMMENT ON COLUMN OVDRF.id IS 'Identificador único del registro.';
LABEL ON COLUMN OVDRF.id IS 'Id';
LABEL ON COLUMN OVDRF.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN OVDRF.fecha_apertura IS 'Campo fecha apertura de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN OVDRF.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN OVDRF.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.saldo_actual IS 'Campo saldo actual de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN OVDRF.saldo_actual TEXT IS 'Campo saldo actual de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.saldo_disponible IS 'Campo saldo disponible de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN OVDRF.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.limite_sobregiro IS 'Campo limite sobregiro de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN OVDRF.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.estado_cuenta IS 'Campo estado cuenta de la tabla OVDRF.';
LABEL ON COLUMN OVDRF.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN OVDRF.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla OVDRF.';
COMMENT ON COLUMN OVDRF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN OVDRF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN OVDRF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN OVDRF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN OVDRF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN OVDRF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN OVDRF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN OVDRF.version_registro IS 'Version Registro';
LABEL ON COLUMN OVDRF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN OVDRF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN OVDRF.observaciones IS 'Observaciones';
LABEL ON COLUMN OVDRF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN OVDRF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN OVDRF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN OVDRF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN OVDRF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN OVDRF.created_at IS 'Created At';
LABEL ON COLUMN OVDRF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN OVDRF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN OVDRF.updated_at IS 'Updated At';
LABEL ON COLUMN OVDRF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ovdrf_created_at ON OVDRF (created_at);

-- TABLA: CNTRLMSG
-- ============================================================================
-- Nombre de la Tabla: CNTRLMSG
-- DESCRIPCIÓN: Tabla de datos para CNTRLMSG en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLMSG (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlmsg_pk PRIMARY KEY (codigo_banco)
) RCDFMT CNTRLMSG;
COMMENT ON TABLE CNTRLMSG IS 'Tabla de datos para CNTRLMSG en el módulo bancario.';
LABEL ON TABLE CNTRLMSG IS 'CNTRLMSG';

COMMENT ON COLUMN CNTRLMSG.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLMSG.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLMSG.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLMSG.fecha_apertura IS 'Campo fecha apertura de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CNTRLMSG.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CNTRLMSG.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.saldo_actual IS 'Campo saldo actual de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLMSG.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.saldo_disponible IS 'Campo saldo disponible de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CNTRLMSG.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.limite_sobregiro IS 'Campo limite sobregiro de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CNTRLMSG.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.estado_cuenta IS 'Campo estado cuenta de la tabla CNTRLMSG.';
LABEL ON COLUMN CNTRLMSG.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CNTRLMSG.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CNTRLMSG.';
COMMENT ON COLUMN CNTRLMSG.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLMSG.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLMSG.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLMSG.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLMSG.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLMSG.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLMSG.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLMSG.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLMSG.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLMSG.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLMSG.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLMSG.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLMSG.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLMSG.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLMSG.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLMSG.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLMSG.created_at IS 'Created At';
LABEL ON COLUMN CNTRLMSG.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLMSG.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLMSG.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLMSG.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlmsg_created_at ON CNTRLMSG (created_at);

-- TABLA: CNTRLRTE
-- ============================================================================
-- Nombre de la Tabla: CNTRLRTE
-- DESCRIPCIÓN: Tabla de datos para CNTRLRTE en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLRTE (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    tipo_producto VARCHAR(20) NOT NULL FOR COLUMN TIPPRO,
    codigo_tabla VARCHAR(20) NOT NULL FOR COLUMN CODTAB,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlrte_pk PRIMARY KEY (codigo_banco, tipo_producto, codigo_tabla)
) RCDFMT CNTRLRTE;
COMMENT ON TABLE CNTRLRTE IS 'Tabla de datos para CNTRLRTE en el módulo bancario.';
LABEL ON TABLE CNTRLRTE IS 'CNTRLRTE';

COMMENT ON COLUMN CNTRLRTE.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLRTE.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLRTE.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLRTE.tipo_producto IS 'Tipo de producto asociado.';
LABEL ON COLUMN CNTRLRTE.tipo_producto IS 'Tipo Producto';
LABEL ON COLUMN CNTRLRTE.tipo_producto TEXT IS 'Tipo de producto asociado.';
COMMENT ON COLUMN CNTRLRTE.codigo_tabla IS 'Código identificador de la tabla.';
LABEL ON COLUMN CNTRLRTE.codigo_tabla IS 'Codigo Tabla';
LABEL ON COLUMN CNTRLRTE.codigo_tabla TEXT IS 'Código identificador de la tabla.';
COMMENT ON COLUMN CNTRLRTE.fecha_apertura IS 'Campo fecha apertura de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CNTRLRTE.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CNTRLRTE.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.saldo_actual IS 'Campo saldo actual de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLRTE.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.saldo_disponible IS 'Campo saldo disponible de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CNTRLRTE.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.limite_sobregiro IS 'Campo limite sobregiro de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CNTRLRTE.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.estado_cuenta IS 'Campo estado cuenta de la tabla CNTRLRTE.';
LABEL ON COLUMN CNTRLRTE.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CNTRLRTE.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CNTRLRTE.';
COMMENT ON COLUMN CNTRLRTE.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLRTE.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLRTE.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLRTE.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLRTE.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLRTE.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLRTE.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLRTE.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLRTE.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLRTE.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLRTE.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLRTE.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLRTE.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLRTE.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLRTE.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLRTE.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLRTE.created_at IS 'Created At';
LABEL ON COLUMN CNTRLRTE.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLRTE.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLRTE.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLRTE.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlrte_created_at ON CNTRLRTE (created_at);

-- TABLA: CNTRLDEV
-- ============================================================================
-- Nombre de la Tabla: CNTRLDEV
-- DESCRIPCIÓN: Tabla de datos para CNTRLDEV en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLDEV (
    codigo_causal VARCHAR(20) NOT NULL FOR COLUMN CODCAU,
    fecha_apertura DATE FOR COLUMN FECAPE,
    fecha_ultima_transaccion DATE FOR COLUMN FECULTTRA,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    saldo_disponible DECIMAL(18,2) FOR COLUMN SALDIS,
    limite_sobregiro DECIMAL(18,2) FOR COLUMN LIMSOB,
    estado_cuenta VARCHAR(20) FOR COLUMN ESTCUE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrldev_pk PRIMARY KEY (codigo_causal)
) RCDFMT CNTRLDEV;
COMMENT ON TABLE CNTRLDEV IS 'Tabla de datos para CNTRLDEV en el módulo bancario.';
LABEL ON TABLE CNTRLDEV IS 'CNTRLDEV';

COMMENT ON COLUMN CNTRLDEV.codigo_causal IS 'Código de causante de la transacción.';
LABEL ON COLUMN CNTRLDEV.codigo_causal IS 'Codigo Causal';
LABEL ON COLUMN CNTRLDEV.codigo_causal TEXT IS 'Código de causante de la transacción.';
COMMENT ON COLUMN CNTRLDEV.fecha_apertura IS 'Campo fecha apertura de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.fecha_apertura IS 'Fecha Apertura';
LABEL ON COLUMN CNTRLDEV.fecha_apertura TEXT IS 'Campo fecha apertura de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.fecha_ultima_transaccion IS 'Campo fecha ultima transaccion de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.fecha_ultima_transaccion IS 'Fecha Ultima Transaccion';
LABEL ON COLUMN CNTRLDEV.fecha_ultima_transaccion TEXT IS 'Campo fecha ultima transaccion de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.saldo_actual IS 'Campo saldo actual de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLDEV.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.saldo_disponible IS 'Campo saldo disponible de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.saldo_disponible IS 'Saldo Disponible';
LABEL ON COLUMN CNTRLDEV.saldo_disponible TEXT IS 'Campo saldo disponible de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.limite_sobregiro IS 'Campo limite sobregiro de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.limite_sobregiro IS 'Limite Sobregiro';
LABEL ON COLUMN CNTRLDEV.limite_sobregiro TEXT IS 'Campo limite sobregiro de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.estado_cuenta IS 'Campo estado cuenta de la tabla CNTRLDEV.';
LABEL ON COLUMN CNTRLDEV.estado_cuenta IS 'Estado Cuenta';
LABEL ON COLUMN CNTRLDEV.estado_cuenta TEXT IS 'Campo estado cuenta de la tabla CNTRLDEV.';
COMMENT ON COLUMN CNTRLDEV.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLDEV.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLDEV.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLDEV.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLDEV.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLDEV.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLDEV.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLDEV.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLDEV.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLDEV.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLDEV.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLDEV.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLDEV.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLDEV.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLDEV.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLDEV.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLDEV.created_at IS 'Created At';
LABEL ON COLUMN CNTRLDEV.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLDEV.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLDEV.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLDEV.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrldev_created_at ON CNTRLDEV (created_at);

-- ============================================================================
-- MODULO 4: CONTRATOS/CERTIFICADOS/GIROS/VALORES AL COBRO (9 tablas)
-- ============================================================================

-- TABLA: DEALS
-- ============================================================================
-- Nombre de la Tabla: DEALS
-- DESCRIPCIÓN: Tabla de datos para DEALS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DEALS (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_deals_pk PRIMARY KEY (id)
) RCDFMT DEALS;
COMMENT ON TABLE DEALS IS 'Tabla de datos para DEALS en el módulo bancario.';
LABEL ON TABLE DEALS IS 'DEALS';

COMMENT ON COLUMN DEALS.id IS 'Identificador único del registro.';
LABEL ON COLUMN DEALS.id IS 'Id';
LABEL ON COLUMN DEALS.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN DEALS.fecha_desembolso IS 'Campo fecha desembolso de la tabla DEALS.';
LABEL ON COLUMN DEALS.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DEALS.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DEALS.';
COMMENT ON COLUMN DEALS.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DEALS.';
LABEL ON COLUMN DEALS.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DEALS.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DEALS.';
COMMENT ON COLUMN DEALS.monto_original IS 'Campo monto original de la tabla DEALS.';
LABEL ON COLUMN DEALS.monto_original IS 'Monto Original';
LABEL ON COLUMN DEALS.monto_original TEXT IS 'Campo monto original de la tabla DEALS.';
COMMENT ON COLUMN DEALS.saldo_actual IS 'Campo saldo actual de la tabla DEALS.';
LABEL ON COLUMN DEALS.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DEALS.saldo_actual TEXT IS 'Campo saldo actual de la tabla DEALS.';
COMMENT ON COLUMN DEALS.tasa_interes IS 'Campo tasa interes de la tabla DEALS.';
LABEL ON COLUMN DEALS.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DEALS.tasa_interes TEXT IS 'Campo tasa interes de la tabla DEALS.';
COMMENT ON COLUMN DEALS.plazo_meses IS 'Campo plazo meses de la tabla DEALS.';
LABEL ON COLUMN DEALS.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DEALS.plazo_meses TEXT IS 'Campo plazo meses de la tabla DEALS.';
COMMENT ON COLUMN DEALS.dias_mora IS 'Campo dias mora de la tabla DEALS.';
LABEL ON COLUMN DEALS.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DEALS.dias_mora TEXT IS 'Campo dias mora de la tabla DEALS.';
COMMENT ON COLUMN DEALS.estado_operacion IS 'Campo estado operacion de la tabla DEALS.';
LABEL ON COLUMN DEALS.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DEALS.estado_operacion TEXT IS 'Campo estado operacion de la tabla DEALS.';
COMMENT ON COLUMN DEALS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DEALS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DEALS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DEALS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DEALS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DEALS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DEALS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DEALS.version_registro IS 'Version Registro';
LABEL ON COLUMN DEALS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DEALS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DEALS.observaciones IS 'Observaciones';
LABEL ON COLUMN DEALS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DEALS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DEALS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DEALS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DEALS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DEALS.created_at IS 'Created At';
LABEL ON COLUMN DEALS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DEALS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DEALS.updated_at IS 'Updated At';
LABEL ON COLUMN DEALS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_deals_created_at ON DEALS (created_at);

-- TABLA: DLPMT
-- ============================================================================
-- Nombre de la Tabla: DLPMT
-- DESCRIPCIÓN: Tabla de datos para DLPMT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DLPMT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_prestamo VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dlpmt_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, fecha, tipo_registro)
) RCDFMT DLPMT;
COMMENT ON TABLE DLPMT IS 'Tabla de datos para DLPMT en el módulo bancario.';
LABEL ON TABLE DLPMT IS 'DLPMT';

COMMENT ON COLUMN DLPMT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN DLPMT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN DLPMT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN DLPMT.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN DLPMT.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN DLPMT.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN DLPMT.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN DLPMT.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN DLPMT.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN DLPMT.numero_prestamo IS 'Número del préstamo.';
LABEL ON COLUMN DLPMT.numero_prestamo IS 'Numero Prestamo';
LABEL ON COLUMN DLPMT.numero_prestamo TEXT IS 'Número del préstamo.';
COMMENT ON COLUMN DLPMT.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN DLPMT.fecha IS 'Fecha';
LABEL ON COLUMN DLPMT.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN DLPMT.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN DLPMT.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN DLPMT.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN DLPMT.fecha_desembolso IS 'Campo fecha desembolso de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DLPMT.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DLPMT.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.monto_original IS 'Campo monto original de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.monto_original IS 'Monto Original';
LABEL ON COLUMN DLPMT.monto_original TEXT IS 'Campo monto original de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.saldo_actual IS 'Campo saldo actual de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DLPMT.saldo_actual TEXT IS 'Campo saldo actual de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.tasa_interes IS 'Campo tasa interes de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DLPMT.tasa_interes TEXT IS 'Campo tasa interes de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.plazo_meses IS 'Campo plazo meses de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DLPMT.plazo_meses TEXT IS 'Campo plazo meses de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.dias_mora IS 'Campo dias mora de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DLPMT.dias_mora TEXT IS 'Campo dias mora de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.estado_operacion IS 'Campo estado operacion de la tabla DLPMT.';
LABEL ON COLUMN DLPMT.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DLPMT.estado_operacion TEXT IS 'Campo estado operacion de la tabla DLPMT.';
COMMENT ON COLUMN DLPMT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DLPMT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DLPMT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DLPMT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DLPMT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DLPMT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DLPMT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DLPMT.version_registro IS 'Version Registro';
LABEL ON COLUMN DLPMT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DLPMT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DLPMT.observaciones IS 'Observaciones';
LABEL ON COLUMN DLPMT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DLPMT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DLPMT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DLPMT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DLPMT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DLPMT.created_at IS 'Created At';
LABEL ON COLUMN DLPMT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DLPMT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DLPMT.updated_at IS 'Updated At';
LABEL ON COLUMN DLPMT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dlpmt_fecha ON DLPMT (fecha);
CREATE INDEX idx_dlpmt_created_at ON DLPMT (created_at);

-- TABLA: DLDRF
-- ============================================================================
-- Nombre de la Tabla: DLDRF
-- DESCRIPCIÓN: Tabla de datos para DLDRF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DLDRF (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_prestamo VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    identificacion VARCHAR(50) NOT NULL FOR COLUMN IDE,
    numero_documento VARCHAR(30) NOT NULL FOR COLUMN NUMDOC,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dldrf_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, identificacion, numero_documento)
) RCDFMT DLDRF;
COMMENT ON TABLE DLDRF IS 'Tabla de datos para DLDRF en el módulo bancario.';
LABEL ON TABLE DLDRF IS 'DLDRF';

COMMENT ON COLUMN DLDRF.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN DLDRF.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN DLDRF.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN DLDRF.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN DLDRF.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN DLDRF.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN DLDRF.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN DLDRF.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN DLDRF.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN DLDRF.numero_prestamo IS 'Número del préstamo.';
LABEL ON COLUMN DLDRF.numero_prestamo IS 'Numero Prestamo';
LABEL ON COLUMN DLDRF.numero_prestamo TEXT IS 'Número del préstamo.';
COMMENT ON COLUMN DLDRF.identificacion IS 'Campo identificacion de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.identificacion IS 'Identificacion';
LABEL ON COLUMN DLDRF.identificacion TEXT IS 'Campo identificacion de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.numero_documento IS 'Número del documento.';
LABEL ON COLUMN DLDRF.numero_documento IS 'Numero Documento';
LABEL ON COLUMN DLDRF.numero_documento TEXT IS 'Número del documento.';
COMMENT ON COLUMN DLDRF.fecha_desembolso IS 'Campo fecha desembolso de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DLDRF.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DLDRF.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.monto_original IS 'Campo monto original de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.monto_original IS 'Monto Original';
LABEL ON COLUMN DLDRF.monto_original TEXT IS 'Campo monto original de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.saldo_actual IS 'Campo saldo actual de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DLDRF.saldo_actual TEXT IS 'Campo saldo actual de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.tasa_interes IS 'Campo tasa interes de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DLDRF.tasa_interes TEXT IS 'Campo tasa interes de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.plazo_meses IS 'Campo plazo meses de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DLDRF.plazo_meses TEXT IS 'Campo plazo meses de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.dias_mora IS 'Campo dias mora de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DLDRF.dias_mora TEXT IS 'Campo dias mora de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.estado_operacion IS 'Campo estado operacion de la tabla DLDRF.';
LABEL ON COLUMN DLDRF.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DLDRF.estado_operacion TEXT IS 'Campo estado operacion de la tabla DLDRF.';
COMMENT ON COLUMN DLDRF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DLDRF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DLDRF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DLDRF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DLDRF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DLDRF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DLDRF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DLDRF.version_registro IS 'Version Registro';
LABEL ON COLUMN DLDRF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DLDRF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DLDRF.observaciones IS 'Observaciones';
LABEL ON COLUMN DLDRF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DLDRF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DLDRF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DLDRF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DLDRF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DLDRF.created_at IS 'Created At';
LABEL ON COLUMN DLDRF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DLDRF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DLDRF.updated_at IS 'Updated At';
LABEL ON COLUMN DLDRF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dldrf_created_at ON DLDRF (created_at);

-- TABLA: DLSDE
-- ============================================================================
-- Nombre de la Tabla: DLSDE
-- DESCRIPCIÓN: Tabla de datos para DLSDE en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DLSDE (
    numero_prestamo VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    codigo_deduccion VARCHAR(20) NOT NULL FOR COLUMN CODDED,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dlsde_pk PRIMARY KEY (numero_prestamo, fecha, tipo_registro, secuencia, codigo_deduccion)
) RCDFMT DLSDE;
COMMENT ON TABLE DLSDE IS 'Tabla de datos para DLSDE en el módulo bancario.';
LABEL ON TABLE DLSDE IS 'DLSDE';

COMMENT ON COLUMN DLSDE.numero_prestamo IS 'Número del préstamo.';
LABEL ON COLUMN DLSDE.numero_prestamo IS 'Numero Prestamo';
LABEL ON COLUMN DLSDE.numero_prestamo TEXT IS 'Número del préstamo.';
COMMENT ON COLUMN DLSDE.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN DLSDE.fecha IS 'Fecha';
LABEL ON COLUMN DLSDE.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN DLSDE.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN DLSDE.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN DLSDE.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN DLSDE.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN DLSDE.secuencia IS 'Secuencia';
LABEL ON COLUMN DLSDE.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN DLSDE.codigo_deduccion IS 'Código del deduccion.';
LABEL ON COLUMN DLSDE.codigo_deduccion IS 'Codigo Deduccion';
LABEL ON COLUMN DLSDE.codigo_deduccion TEXT IS 'Código del deduccion.';
COMMENT ON COLUMN DLSDE.fecha_desembolso IS 'Campo fecha desembolso de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DLSDE.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DLSDE.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.monto_original IS 'Campo monto original de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.monto_original IS 'Monto Original';
LABEL ON COLUMN DLSDE.monto_original TEXT IS 'Campo monto original de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.saldo_actual IS 'Campo saldo actual de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DLSDE.saldo_actual TEXT IS 'Campo saldo actual de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.tasa_interes IS 'Campo tasa interes de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DLSDE.tasa_interes TEXT IS 'Campo tasa interes de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.plazo_meses IS 'Campo plazo meses de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DLSDE.plazo_meses TEXT IS 'Campo plazo meses de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.dias_mora IS 'Campo dias mora de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DLSDE.dias_mora TEXT IS 'Campo dias mora de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.estado_operacion IS 'Campo estado operacion de la tabla DLSDE.';
LABEL ON COLUMN DLSDE.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DLSDE.estado_operacion TEXT IS 'Campo estado operacion de la tabla DLSDE.';
COMMENT ON COLUMN DLSDE.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DLSDE.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DLSDE.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DLSDE.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DLSDE.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DLSDE.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DLSDE.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DLSDE.version_registro IS 'Version Registro';
LABEL ON COLUMN DLSDE.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DLSDE.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DLSDE.observaciones IS 'Observaciones';
LABEL ON COLUMN DLSDE.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DLSDE.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DLSDE.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DLSDE.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DLSDE.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DLSDE.created_at IS 'Created At';
LABEL ON COLUMN DLSDE.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DLSDE.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DLSDE.updated_at IS 'Updated At';
LABEL ON COLUMN DLSDE.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dlsde_fecha ON DLSDE (fecha);
CREATE INDEX idx_dlsde_created_at ON DLSDE (created_at);

-- TABLA: DLCLP
-- ============================================================================
-- Nombre de la Tabla: DLCLP
-- DESCRIPCIÓN: Tabla de datos para DLCLP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DLCLP (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    referencia VARCHAR(50) NOT NULL FOR COLUMN REFERENCIA,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dlclp_pk PRIMARY KEY (id_cliente, numero_cuenta, referencia)
) RCDFMT DLCLP;
COMMENT ON TABLE DLCLP IS 'Tabla de datos para DLCLP en el módulo bancario.';
LABEL ON TABLE DLCLP IS 'DLCLP';

COMMENT ON COLUMN DLCLP.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN DLCLP.id_cliente IS 'Id Cliente';
LABEL ON COLUMN DLCLP.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN DLCLP.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN DLCLP.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN DLCLP.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN DLCLP.referencia IS 'Referencia adicional del registro.';
LABEL ON COLUMN DLCLP.referencia IS 'Referencia';
LABEL ON COLUMN DLCLP.referencia TEXT IS 'Referencia adicional del registro.';
COMMENT ON COLUMN DLCLP.fecha_desembolso IS 'Campo fecha desembolso de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DLCLP.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DLCLP.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.monto_original IS 'Campo monto original de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.monto_original IS 'Monto Original';
LABEL ON COLUMN DLCLP.monto_original TEXT IS 'Campo monto original de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.saldo_actual IS 'Campo saldo actual de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DLCLP.saldo_actual TEXT IS 'Campo saldo actual de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.tasa_interes IS 'Campo tasa interes de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DLCLP.tasa_interes TEXT IS 'Campo tasa interes de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.plazo_meses IS 'Campo plazo meses de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DLCLP.plazo_meses TEXT IS 'Campo plazo meses de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.dias_mora IS 'Campo dias mora de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DLCLP.dias_mora TEXT IS 'Campo dias mora de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.estado_operacion IS 'Campo estado operacion de la tabla DLCLP.';
LABEL ON COLUMN DLCLP.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DLCLP.estado_operacion TEXT IS 'Campo estado operacion de la tabla DLCLP.';
COMMENT ON COLUMN DLCLP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DLCLP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DLCLP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DLCLP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DLCLP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DLCLP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DLCLP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DLCLP.version_registro IS 'Version Registro';
LABEL ON COLUMN DLCLP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DLCLP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DLCLP.observaciones IS 'Observaciones';
LABEL ON COLUMN DLCLP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DLCLP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DLCLP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DLCLP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DLCLP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DLCLP.created_at IS 'Created At';
LABEL ON COLUMN DLCLP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DLCLP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DLCLP.updated_at IS 'Updated At';
LABEL ON COLUMN DLCLP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dlclp_created_at ON DLCLP (created_at);

-- TABLA: DDCPN
-- ============================================================================
-- Nombre de la Tabla: DDCPN
-- DESCRIPCIÓN: Tabla de datos para DDCPN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DDCPN (
    numero_prestamo VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ddcpn_pk PRIMARY KEY (numero_prestamo)
) RCDFMT DDCPN;
COMMENT ON TABLE DDCPN IS 'Tabla de datos para DDCPN en el módulo bancario.';
LABEL ON TABLE DDCPN IS 'DDCPN';

COMMENT ON COLUMN DDCPN.numero_prestamo IS 'Número del préstamo.';
LABEL ON COLUMN DDCPN.numero_prestamo IS 'Numero Prestamo';
LABEL ON COLUMN DDCPN.numero_prestamo TEXT IS 'Número del préstamo.';
COMMENT ON COLUMN DDCPN.fecha_desembolso IS 'Campo fecha desembolso de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DDCPN.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DDCPN.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.monto_original IS 'Campo monto original de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.monto_original IS 'Monto Original';
LABEL ON COLUMN DDCPN.monto_original TEXT IS 'Campo monto original de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.saldo_actual IS 'Campo saldo actual de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DDCPN.saldo_actual TEXT IS 'Campo saldo actual de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.tasa_interes IS 'Campo tasa interes de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DDCPN.tasa_interes TEXT IS 'Campo tasa interes de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.plazo_meses IS 'Campo plazo meses de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DDCPN.plazo_meses TEXT IS 'Campo plazo meses de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.dias_mora IS 'Campo dias mora de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DDCPN.dias_mora TEXT IS 'Campo dias mora de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.estado_operacion IS 'Campo estado operacion de la tabla DDCPN.';
LABEL ON COLUMN DDCPN.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DDCPN.estado_operacion TEXT IS 'Campo estado operacion de la tabla DDCPN.';
COMMENT ON COLUMN DDCPN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DDCPN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DDCPN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DDCPN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DDCPN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DDCPN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DDCPN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DDCPN.version_registro IS 'Version Registro';
LABEL ON COLUMN DDCPN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DDCPN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DDCPN.observaciones IS 'Observaciones';
LABEL ON COLUMN DDCPN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DDCPN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DDCPN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DDCPN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DDCPN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DDCPN.created_at IS 'Created At';
LABEL ON COLUMN DDCPN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DDCPN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DDCPN.updated_at IS 'Updated At';
LABEL ON COLUMN DDCPN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ddcpn_created_at ON DDCPN (created_at);

-- TABLA: DLITP
-- ============================================================================
-- Nombre de la Tabla: DLITP
-- DESCRIPCIÓN: Tabla de datos para DLITP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DLITP (
    numero_prestamo VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    codigo_deduccion VARCHAR(20) NOT NULL FOR COLUMN CODDED,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dlitp_pk PRIMARY KEY (numero_prestamo, codigo_deduccion)
) RCDFMT DLITP;
COMMENT ON TABLE DLITP IS 'Tabla de datos para DLITP en el módulo bancario.';
LABEL ON TABLE DLITP IS 'DLITP';

COMMENT ON COLUMN DLITP.numero_prestamo IS 'Número del préstamo.';
LABEL ON COLUMN DLITP.numero_prestamo IS 'Numero Prestamo';
LABEL ON COLUMN DLITP.numero_prestamo TEXT IS 'Número del préstamo.';
COMMENT ON COLUMN DLITP.codigo_deduccion IS 'Código del deduccion.';
LABEL ON COLUMN DLITP.codigo_deduccion IS 'Codigo Deduccion';
LABEL ON COLUMN DLITP.codigo_deduccion TEXT IS 'Código del deduccion.';
COMMENT ON COLUMN DLITP.fecha_desembolso IS 'Campo fecha desembolso de la tabla DLITP.';
LABEL ON COLUMN DLITP.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN DLITP.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla DLITP.';
COMMENT ON COLUMN DLITP.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DLITP.';
LABEL ON COLUMN DLITP.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DLITP.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DLITP.';
COMMENT ON COLUMN DLITP.monto_original IS 'Campo monto original de la tabla DLITP.';
LABEL ON COLUMN DLITP.monto_original IS 'Monto Original';
LABEL ON COLUMN DLITP.monto_original TEXT IS 'Campo monto original de la tabla DLITP.';
COMMENT ON COLUMN DLITP.saldo_actual IS 'Campo saldo actual de la tabla DLITP.';
LABEL ON COLUMN DLITP.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN DLITP.saldo_actual TEXT IS 'Campo saldo actual de la tabla DLITP.';
COMMENT ON COLUMN DLITP.tasa_interes IS 'Campo tasa interes de la tabla DLITP.';
LABEL ON COLUMN DLITP.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN DLITP.tasa_interes TEXT IS 'Campo tasa interes de la tabla DLITP.';
COMMENT ON COLUMN DLITP.plazo_meses IS 'Campo plazo meses de la tabla DLITP.';
LABEL ON COLUMN DLITP.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DLITP.plazo_meses TEXT IS 'Campo plazo meses de la tabla DLITP.';
COMMENT ON COLUMN DLITP.dias_mora IS 'Campo dias mora de la tabla DLITP.';
LABEL ON COLUMN DLITP.dias_mora IS 'Dias Mora';
LABEL ON COLUMN DLITP.dias_mora TEXT IS 'Campo dias mora de la tabla DLITP.';
COMMENT ON COLUMN DLITP.estado_operacion IS 'Campo estado operacion de la tabla DLITP.';
LABEL ON COLUMN DLITP.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DLITP.estado_operacion TEXT IS 'Campo estado operacion de la tabla DLITP.';
COMMENT ON COLUMN DLITP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DLITP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DLITP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DLITP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DLITP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DLITP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DLITP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DLITP.version_registro IS 'Version Registro';
LABEL ON COLUMN DLITP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DLITP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DLITP.observaciones IS 'Observaciones';
LABEL ON COLUMN DLITP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DLITP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DLITP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DLITP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DLITP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DLITP.created_at IS 'Created At';
LABEL ON COLUMN DLITP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DLITP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DLITP.updated_at IS 'Updated At';
LABEL ON COLUMN DLITP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dlitp_created_at ON DLITP (created_at);

-- TABLA: CDRTE
-- ============================================================================
-- Nombre de la Tabla: CDRTE
-- DESCRIPCIÓN: Tabla de datos para CDRTE en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CDRTE (
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cdrte_pk PRIMARY KEY (numero_tabla, fecha, codigo_moneda)
) RCDFMT CDRTE;
COMMENT ON TABLE CDRTE IS 'Tabla de datos para CDRTE en el módulo bancario.';
LABEL ON TABLE CDRTE IS 'CDRTE';

COMMENT ON COLUMN CDRTE.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN CDRTE.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN CDRTE.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN CDRTE.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN CDRTE.fecha IS 'Fecha';
LABEL ON COLUMN CDRTE.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN CDRTE.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN CDRTE.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN CDRTE.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN CDRTE.fecha_desembolso IS 'Campo fecha desembolso de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN CDRTE.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CDRTE.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.monto_original IS 'Campo monto original de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.monto_original IS 'Monto Original';
LABEL ON COLUMN CDRTE.monto_original TEXT IS 'Campo monto original de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.saldo_actual IS 'Campo saldo actual de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CDRTE.saldo_actual TEXT IS 'Campo saldo actual de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.tasa_interes IS 'Campo tasa interes de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN CDRTE.tasa_interes TEXT IS 'Campo tasa interes de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.plazo_meses IS 'Campo plazo meses de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN CDRTE.plazo_meses TEXT IS 'Campo plazo meses de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.dias_mora IS 'Campo dias mora de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.dias_mora IS 'Dias Mora';
LABEL ON COLUMN CDRTE.dias_mora TEXT IS 'Campo dias mora de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.estado_operacion IS 'Campo estado operacion de la tabla CDRTE.';
LABEL ON COLUMN CDRTE.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN CDRTE.estado_operacion TEXT IS 'Campo estado operacion de la tabla CDRTE.';
COMMENT ON COLUMN CDRTE.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CDRTE.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CDRTE.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CDRTE.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CDRTE.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CDRTE.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CDRTE.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CDRTE.version_registro IS 'Version Registro';
LABEL ON COLUMN CDRTE.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CDRTE.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CDRTE.observaciones IS 'Observaciones';
LABEL ON COLUMN CDRTE.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CDRTE.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CDRTE.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CDRTE.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CDRTE.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CDRTE.created_at IS 'Created At';
LABEL ON COLUMN CDRTE.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CDRTE.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CDRTE.updated_at IS 'Updated At';
LABEL ON COLUMN CDRTE.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cdrte_fecha ON CDRTE (fecha);
CREATE INDEX idx_cdrte_created_at ON CDRTE (created_at);

-- TABLA: CNTRLDLS
-- ============================================================================
-- Nombre de la Tabla: CNTRLDLS
-- DESCRIPCIÓN: Tabla de datos para CNTRLDLS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLDLS (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    tipo_producto VARCHAR(20) NOT NULL FOR COLUMN TIPPRO,
    fecha_desembolso DATE FOR COLUMN FECDES,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    tasa_interes DECIMAL(18,2) FOR COLUMN TASINT,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    dias_mora INTEGER FOR COLUMN DIASMORA,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrldls_pk PRIMARY KEY (codigo_banco, numero_tabla, tipo_producto)
) RCDFMT CNTRLDLS;
COMMENT ON TABLE CNTRLDLS IS 'Tabla de datos para CNTRLDLS en el módulo bancario.';
LABEL ON TABLE CNTRLDLS IS 'CNTRLDLS';

COMMENT ON COLUMN CNTRLDLS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLDLS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLDLS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLDLS.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN CNTRLDLS.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN CNTRLDLS.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN CNTRLDLS.tipo_producto IS 'Tipo de producto asociado.';
LABEL ON COLUMN CNTRLDLS.tipo_producto IS 'Tipo Producto';
LABEL ON COLUMN CNTRLDLS.tipo_producto TEXT IS 'Tipo de producto asociado.';
COMMENT ON COLUMN CNTRLDLS.fecha_desembolso IS 'Campo fecha desembolso de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.fecha_desembolso IS 'Fecha Desembolso';
LABEL ON COLUMN CNTRLDLS.fecha_desembolso TEXT IS 'Campo fecha desembolso de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLDLS.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.monto_original IS 'Campo monto original de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLDLS.monto_original TEXT IS 'Campo monto original de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.saldo_actual IS 'Campo saldo actual de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLDLS.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.tasa_interes IS 'Campo tasa interes de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.tasa_interes IS 'Tasa Interes';
LABEL ON COLUMN CNTRLDLS.tasa_interes TEXT IS 'Campo tasa interes de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.plazo_meses IS 'Campo plazo meses de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN CNTRLDLS.plazo_meses TEXT IS 'Campo plazo meses de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.dias_mora IS 'Campo dias mora de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.dias_mora IS 'Dias Mora';
LABEL ON COLUMN CNTRLDLS.dias_mora TEXT IS 'Campo dias mora de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.estado_operacion IS 'Campo estado operacion de la tabla CNTRLDLS.';
LABEL ON COLUMN CNTRLDLS.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN CNTRLDLS.estado_operacion TEXT IS 'Campo estado operacion de la tabla CNTRLDLS.';
COMMENT ON COLUMN CNTRLDLS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLDLS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLDLS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLDLS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLDLS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLDLS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLDLS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLDLS.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLDLS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLDLS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLDLS.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLDLS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLDLS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLDLS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLDLS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLDLS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLDLS.created_at IS 'Created At';
LABEL ON COLUMN CNTRLDLS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLDLS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLDLS.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLDLS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrldls_created_at ON CNTRLDLS (created_at);

-- ============================================================================
-- MODULO 5: CARTAS DE CRÉDITO (10 tablas)
-- ============================================================================

-- TABLA: LCMST
-- ============================================================================
-- Nombre de la Tabla: LCMST
-- DESCRIPCIÓN: Tabla de datos para LCMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcmst_pk PRIMARY KEY (id)
) RCDFMT LCMST;
COMMENT ON TABLE LCMST IS 'Tabla de datos para LCMST en el módulo bancario.';
LABEL ON TABLE LCMST IS 'LCMST';

COMMENT ON COLUMN LCMST.id IS 'Identificador único del registro.';
LABEL ON COLUMN LCMST.id IS 'Id';
LABEL ON COLUMN LCMST.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN LCMST.fecha_emision IS 'Campo fecha emision de la tabla LCMST.';
LABEL ON COLUMN LCMST.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCMST.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCMST.';
COMMENT ON COLUMN LCMST.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCMST.';
LABEL ON COLUMN LCMST.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCMST.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCMST.';
COMMENT ON COLUMN LCMST.monto_original IS 'Campo monto original de la tabla LCMST.';
LABEL ON COLUMN LCMST.monto_original IS 'Monto Original';
LABEL ON COLUMN LCMST.monto_original TEXT IS 'Campo monto original de la tabla LCMST.';
COMMENT ON COLUMN LCMST.saldo_actual IS 'Campo saldo actual de la tabla LCMST.';
LABEL ON COLUMN LCMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCMST.';
COMMENT ON COLUMN LCMST.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCMST.';
LABEL ON COLUMN LCMST.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCMST.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCMST.';
COMMENT ON COLUMN LCMST.pais_destino IS 'Campo pais destino de la tabla LCMST.';
LABEL ON COLUMN LCMST.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCMST.pais_destino TEXT IS 'Campo pais destino de la tabla LCMST.';
COMMENT ON COLUMN LCMST.estado_carta IS 'Campo estado carta de la tabla LCMST.';
LABEL ON COLUMN LCMST.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCMST.estado_carta TEXT IS 'Campo estado carta de la tabla LCMST.';
COMMENT ON COLUMN LCMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCMST.version_registro IS 'Version Registro';
LABEL ON COLUMN LCMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCMST.observaciones IS 'Observaciones';
LABEL ON COLUMN LCMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCMST.created_at IS 'Created At';
LABEL ON COLUMN LCMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCMST.updated_at IS 'Updated At';
LABEL ON COLUMN LCMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcmst_created_at ON LCMST (created_at);

-- TABLA: LCDOC
-- ============================================================================
-- Nombre de la Tabla: LCDOC
-- DESCRIPCIÓN: Tabla de datos para LCDOC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCDOC (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_documento VARCHAR(20) NOT NULL FOR COLUMN CODDOC,
    numero_linea VARCHAR(30) NOT NULL FOR COLUMN NUMLIN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcdoc_pk PRIMARY KEY (numero_carta_credito, tipo_registro, codigo_banco, codigo_documento, numero_linea)
) RCDFMT LCDOC;
COMMENT ON TABLE LCDOC IS 'Tabla de datos para LCDOC en el módulo bancario.';
LABEL ON TABLE LCDOC IS 'LCDOC';

COMMENT ON COLUMN LCDOC.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN LCDOC.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN LCDOC.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN LCDOC.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN LCDOC.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN LCDOC.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN LCDOC.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN LCDOC.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN LCDOC.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN LCDOC.codigo_documento IS 'Código del documento.';
LABEL ON COLUMN LCDOC.codigo_documento IS 'Codigo Documento';
LABEL ON COLUMN LCDOC.codigo_documento TEXT IS 'Código del documento.';
COMMENT ON COLUMN LCDOC.numero_linea IS 'Número de línea.';
LABEL ON COLUMN LCDOC.numero_linea IS 'Numero Linea';
LABEL ON COLUMN LCDOC.numero_linea TEXT IS 'Número de línea.';
COMMENT ON COLUMN LCDOC.fecha_emision IS 'Campo fecha emision de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCDOC.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCDOC.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.monto_original IS 'Campo monto original de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.monto_original IS 'Monto Original';
LABEL ON COLUMN LCDOC.monto_original TEXT IS 'Campo monto original de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.saldo_actual IS 'Campo saldo actual de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCDOC.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCDOC.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.pais_destino IS 'Campo pais destino de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCDOC.pais_destino TEXT IS 'Campo pais destino de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.estado_carta IS 'Campo estado carta de la tabla LCDOC.';
LABEL ON COLUMN LCDOC.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCDOC.estado_carta TEXT IS 'Campo estado carta de la tabla LCDOC.';
COMMENT ON COLUMN LCDOC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCDOC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCDOC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCDOC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCDOC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCDOC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCDOC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCDOC.version_registro IS 'Version Registro';
LABEL ON COLUMN LCDOC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCDOC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCDOC.observaciones IS 'Observaciones';
LABEL ON COLUMN LCDOC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCDOC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCDOC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCDOC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCDOC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCDOC.created_at IS 'Created At';
LABEL ON COLUMN LCDOC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCDOC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCDOC.updated_at IS 'Updated At';
LABEL ON COLUMN LCDOC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcdoc_created_at ON LCDOC (created_at);

-- TABLA: LCFIN
-- ============================================================================
-- Nombre de la Tabla: LCFIN
-- DESCRIPCIÓN: Tabla de datos para LCFIN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCFIN (
    nivel INTEGER NOT NULL FOR COLUMN NIVEL,
    codigo_documento VARCHAR(20) NOT NULL FOR COLUMN CODDOC,
    secuencia_de_texto VARCHAR(50) NOT NULL FOR COLUMN SECDETEX,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcfin_pk PRIMARY KEY (nivel, codigo_documento, secuencia_de_texto)
) RCDFMT LCFIN;
COMMENT ON TABLE LCFIN IS 'Tabla de datos para LCFIN en el módulo bancario.';
LABEL ON TABLE LCFIN IS 'LCFIN';

COMMENT ON COLUMN LCFIN.nivel IS 'Nivel jerárquico o de detalle.';
LABEL ON COLUMN LCFIN.nivel IS 'Nivel';
LABEL ON COLUMN LCFIN.nivel TEXT IS 'Nivel jerárquico o de detalle.';
COMMENT ON COLUMN LCFIN.codigo_documento IS 'Código del documento.';
LABEL ON COLUMN LCFIN.codigo_documento IS 'Codigo Documento';
LABEL ON COLUMN LCFIN.codigo_documento TEXT IS 'Código del documento.';
COMMENT ON COLUMN LCFIN.secuencia_de_texto IS 'Campo secuencia de texto de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.secuencia_de_texto IS 'Secuencia De Texto';
LABEL ON COLUMN LCFIN.secuencia_de_texto TEXT IS 'Campo secuencia de texto de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.fecha_emision IS 'Campo fecha emision de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCFIN.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCFIN.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.monto_original IS 'Campo monto original de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.monto_original IS 'Monto Original';
LABEL ON COLUMN LCFIN.monto_original TEXT IS 'Campo monto original de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.saldo_actual IS 'Campo saldo actual de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCFIN.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCFIN.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.pais_destino IS 'Campo pais destino de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCFIN.pais_destino TEXT IS 'Campo pais destino de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.estado_carta IS 'Campo estado carta de la tabla LCFIN.';
LABEL ON COLUMN LCFIN.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCFIN.estado_carta TEXT IS 'Campo estado carta de la tabla LCFIN.';
COMMENT ON COLUMN LCFIN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCFIN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCFIN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCFIN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCFIN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCFIN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCFIN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCFIN.version_registro IS 'Version Registro';
LABEL ON COLUMN LCFIN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCFIN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCFIN.observaciones IS 'Observaciones';
LABEL ON COLUMN LCFIN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCFIN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCFIN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCFIN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCFIN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCFIN.created_at IS 'Created At';
LABEL ON COLUMN LCFIN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCFIN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCFIN.updated_at IS 'Updated At';
LABEL ON COLUMN LCFIN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcfin_created_at ON LCFIN (created_at);

-- TABLA: LCFMT
-- ============================================================================
-- Nombre de la Tabla: LCFMT
-- DESCRIPCIÓN: Tabla de datos para LCFMT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCFMT (
    codigo_documento VARCHAR(20) NOT NULL FOR COLUMN CODDOC,
    secuencia_de_texto VARCHAR(50) NOT NULL FOR COLUMN SECDETEX,
    numero_linea VARCHAR(30) NOT NULL FOR COLUMN NUMLIN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcfmt_pk PRIMARY KEY (codigo_documento, secuencia_de_texto, numero_linea)
) RCDFMT LCFMT;
COMMENT ON TABLE LCFMT IS 'Tabla de datos para LCFMT en el módulo bancario.';
LABEL ON TABLE LCFMT IS 'LCFMT';

COMMENT ON COLUMN LCFMT.codigo_documento IS 'Código del documento.';
LABEL ON COLUMN LCFMT.codigo_documento IS 'Codigo Documento';
LABEL ON COLUMN LCFMT.codigo_documento TEXT IS 'Código del documento.';
COMMENT ON COLUMN LCFMT.secuencia_de_texto IS 'Campo secuencia de texto de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.secuencia_de_texto IS 'Secuencia De Texto';
LABEL ON COLUMN LCFMT.secuencia_de_texto TEXT IS 'Campo secuencia de texto de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.numero_linea IS 'Número de línea.';
LABEL ON COLUMN LCFMT.numero_linea IS 'Numero Linea';
LABEL ON COLUMN LCFMT.numero_linea TEXT IS 'Número de línea.';
COMMENT ON COLUMN LCFMT.fecha_emision IS 'Campo fecha emision de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCFMT.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCFMT.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.monto_original IS 'Campo monto original de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.monto_original IS 'Monto Original';
LABEL ON COLUMN LCFMT.monto_original TEXT IS 'Campo monto original de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.saldo_actual IS 'Campo saldo actual de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCFMT.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCFMT.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.pais_destino IS 'Campo pais destino de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCFMT.pais_destino TEXT IS 'Campo pais destino de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.estado_carta IS 'Campo estado carta de la tabla LCFMT.';
LABEL ON COLUMN LCFMT.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCFMT.estado_carta TEXT IS 'Campo estado carta de la tabla LCFMT.';
COMMENT ON COLUMN LCFMT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCFMT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCFMT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCFMT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCFMT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCFMT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCFMT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCFMT.version_registro IS 'Version Registro';
LABEL ON COLUMN LCFMT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCFMT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCFMT.observaciones IS 'Observaciones';
LABEL ON COLUMN LCFMT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCFMT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCFMT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCFMT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCFMT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCFMT.created_at IS 'Created At';
LABEL ON COLUMN LCFMT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCFMT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCFMT.updated_at IS 'Updated At';
LABEL ON COLUMN LCFMT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcfmt_created_at ON LCFMT (created_at);

-- TABLA: LCADM
-- ============================================================================
-- Nombre de la Tabla: LCADM
-- DESCRIPCIÓN: Tabla de datos para LCADM en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCADM (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    numero_enmienda VARCHAR(30) NOT NULL FOR COLUMN NUMENM,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcadm_pk PRIMARY KEY (numero_carta_credito, numero_enmienda)
) RCDFMT LCADM;
COMMENT ON TABLE LCADM IS 'Tabla de datos para LCADM en el módulo bancario.';
LABEL ON TABLE LCADM IS 'LCADM';

COMMENT ON COLUMN LCADM.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN LCADM.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN LCADM.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN LCADM.numero_enmienda IS 'Número de enmienda.';
LABEL ON COLUMN LCADM.numero_enmienda IS 'Numero Enmienda';
LABEL ON COLUMN LCADM.numero_enmienda TEXT IS 'Número de enmienda.';
COMMENT ON COLUMN LCADM.fecha_emision IS 'Campo fecha emision de la tabla LCADM.';
LABEL ON COLUMN LCADM.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCADM.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCADM.';
COMMENT ON COLUMN LCADM.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCADM.';
LABEL ON COLUMN LCADM.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCADM.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCADM.';
COMMENT ON COLUMN LCADM.monto_original IS 'Campo monto original de la tabla LCADM.';
LABEL ON COLUMN LCADM.monto_original IS 'Monto Original';
LABEL ON COLUMN LCADM.monto_original TEXT IS 'Campo monto original de la tabla LCADM.';
COMMENT ON COLUMN LCADM.saldo_actual IS 'Campo saldo actual de la tabla LCADM.';
LABEL ON COLUMN LCADM.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCADM.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCADM.';
COMMENT ON COLUMN LCADM.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCADM.';
LABEL ON COLUMN LCADM.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCADM.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCADM.';
COMMENT ON COLUMN LCADM.pais_destino IS 'Campo pais destino de la tabla LCADM.';
LABEL ON COLUMN LCADM.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCADM.pais_destino TEXT IS 'Campo pais destino de la tabla LCADM.';
COMMENT ON COLUMN LCADM.estado_carta IS 'Campo estado carta de la tabla LCADM.';
LABEL ON COLUMN LCADM.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCADM.estado_carta TEXT IS 'Campo estado carta de la tabla LCADM.';
COMMENT ON COLUMN LCADM.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCADM.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCADM.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCADM.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCADM.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCADM.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCADM.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCADM.version_registro IS 'Version Registro';
LABEL ON COLUMN LCADM.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCADM.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCADM.observaciones IS 'Observaciones';
LABEL ON COLUMN LCADM.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCADM.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCADM.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCADM.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCADM.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCADM.created_at IS 'Created At';
LABEL ON COLUMN LCADM.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCADM.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCADM.updated_at IS 'Updated At';
LABEL ON COLUMN LCADM.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcadm_created_at ON LCADM (created_at);

-- TABLA: LCCOV
-- ============================================================================
-- Nombre de la Tabla: LCCOV
-- DESCRIPCIÓN: Tabla de datos para LCCOV en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCCOV (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lccov_pk PRIMARY KEY (numero_carta_credito, secuencia)
) RCDFMT LCCOV;
COMMENT ON TABLE LCCOV IS 'Tabla de datos para LCCOV en el módulo bancario.';
LABEL ON TABLE LCCOV IS 'LCCOV';

COMMENT ON COLUMN LCCOV.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN LCCOV.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN LCCOV.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN LCCOV.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN LCCOV.secuencia IS 'Secuencia';
LABEL ON COLUMN LCCOV.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN LCCOV.fecha_emision IS 'Campo fecha emision de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCCOV.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCCOV.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.monto_original IS 'Campo monto original de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.monto_original IS 'Monto Original';
LABEL ON COLUMN LCCOV.monto_original TEXT IS 'Campo monto original de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.saldo_actual IS 'Campo saldo actual de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCCOV.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCCOV.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.pais_destino IS 'Campo pais destino de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCCOV.pais_destino TEXT IS 'Campo pais destino de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.estado_carta IS 'Campo estado carta de la tabla LCCOV.';
LABEL ON COLUMN LCCOV.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCCOV.estado_carta TEXT IS 'Campo estado carta de la tabla LCCOV.';
COMMENT ON COLUMN LCCOV.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCCOV.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCCOV.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCCOV.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCCOV.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCCOV.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCCOV.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCCOV.version_registro IS 'Version Registro';
LABEL ON COLUMN LCCOV.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCCOV.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCCOV.observaciones IS 'Observaciones';
LABEL ON COLUMN LCCOV.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCCOV.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCCOV.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCCOV.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCCOV.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCCOV.created_at IS 'Created At';
LABEL ON COLUMN LCCOV.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCCOV.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCCOV.updated_at IS 'Updated At';
LABEL ON COLUMN LCCOV.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lccov_created_at ON LCCOV (created_at);

-- TABLA: LCDIN
-- ============================================================================
-- Nombre de la Tabla: LCDIN
-- DESCRIPCIÓN: Tabla de datos para LCDIN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCDIN (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcdin_pk PRIMARY KEY (numero_carta_credito, secuencia)
) RCDFMT LCDIN;
COMMENT ON TABLE LCDIN IS 'Tabla de datos para LCDIN en el módulo bancario.';
LABEL ON TABLE LCDIN IS 'LCDIN';

COMMENT ON COLUMN LCDIN.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN LCDIN.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN LCDIN.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN LCDIN.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN LCDIN.secuencia IS 'Secuencia';
LABEL ON COLUMN LCDIN.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN LCDIN.fecha_emision IS 'Campo fecha emision de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCDIN.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCDIN.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.monto_original IS 'Campo monto original de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.monto_original IS 'Monto Original';
LABEL ON COLUMN LCDIN.monto_original TEXT IS 'Campo monto original de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.saldo_actual IS 'Campo saldo actual de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCDIN.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCDIN.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.pais_destino IS 'Campo pais destino de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCDIN.pais_destino TEXT IS 'Campo pais destino de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.estado_carta IS 'Campo estado carta de la tabla LCDIN.';
LABEL ON COLUMN LCDIN.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCDIN.estado_carta TEXT IS 'Campo estado carta de la tabla LCDIN.';
COMMENT ON COLUMN LCDIN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCDIN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCDIN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCDIN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCDIN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCDIN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCDIN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCDIN.version_registro IS 'Version Registro';
LABEL ON COLUMN LCDIN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCDIN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCDIN.observaciones IS 'Observaciones';
LABEL ON COLUMN LCDIN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCDIN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCDIN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCDIN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCDIN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCDIN.created_at IS 'Created At';
LABEL ON COLUMN LCDIN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCDIN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCDIN.updated_at IS 'Updated At';
LABEL ON COLUMN LCDIN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcdin_created_at ON LCDIN (created_at);

-- TABLA: LCSTA
-- ============================================================================
-- Nombre de la Tabla: LCSTA
-- DESCRIPCIÓN: Tabla de datos para LCSTA en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCSTA (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcsta_pk PRIMARY KEY (id)
) RCDFMT LCSTA;
COMMENT ON TABLE LCSTA IS 'Tabla de datos para LCSTA en el módulo bancario.';
LABEL ON TABLE LCSTA IS 'LCSTA';

COMMENT ON COLUMN LCSTA.id IS 'Identificador único del registro.';
LABEL ON COLUMN LCSTA.id IS 'Id';
LABEL ON COLUMN LCSTA.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN LCSTA.fecha_emision IS 'Campo fecha emision de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN LCSTA.fecha_emision TEXT IS 'Campo fecha emision de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCSTA.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.monto_original IS 'Campo monto original de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.monto_original IS 'Monto Original';
LABEL ON COLUMN LCSTA.monto_original TEXT IS 'Campo monto original de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.saldo_actual IS 'Campo saldo actual de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN LCSTA.saldo_actual TEXT IS 'Campo saldo actual de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.banco_corresponsal IS 'Campo banco corresponsal de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN LCSTA.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.pais_destino IS 'Campo pais destino de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.pais_destino IS 'Pais Destino';
LABEL ON COLUMN LCSTA.pais_destino TEXT IS 'Campo pais destino de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.estado_carta IS 'Campo estado carta de la tabla LCSTA.';
LABEL ON COLUMN LCSTA.estado_carta IS 'Estado Carta';
LABEL ON COLUMN LCSTA.estado_carta TEXT IS 'Campo estado carta de la tabla LCSTA.';
COMMENT ON COLUMN LCSTA.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCSTA.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCSTA.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCSTA.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCSTA.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCSTA.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCSTA.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCSTA.version_registro IS 'Version Registro';
LABEL ON COLUMN LCSTA.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCSTA.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCSTA.observaciones IS 'Observaciones';
LABEL ON COLUMN LCSTA.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCSTA.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCSTA.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCSTA.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCSTA.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCSTA.created_at IS 'Created At';
LABEL ON COLUMN LCSTA.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCSTA.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCSTA.updated_at IS 'Updated At';
LABEL ON COLUMN LCSTA.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcsta_created_at ON LCSTA (created_at);

-- TABLA: CNTRLLCP
-- ============================================================================
-- Nombre de la Tabla: CNTRLLCP
-- DESCRIPCIÓN: Tabla de datos para CNTRLLCP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLLCP (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    lcrparm VARCHAR(20) NOT NULL FOR COLUMN LCRPARM,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrllcp_pk PRIMARY KEY (codigo_banco, lcrparm)
) RCDFMT CNTRLLCP;
COMMENT ON TABLE CNTRLLCP IS 'Tabla de datos para CNTRLLCP en el módulo bancario.';
LABEL ON TABLE CNTRLLCP IS 'CNTRLLCP';

COMMENT ON COLUMN CNTRLLCP.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLLCP.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLLCP.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLLCP.lcrparm IS 'Campo lcrparm de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.lcrparm IS 'Lcrparm';
LABEL ON COLUMN CNTRLLCP.lcrparm TEXT IS 'Campo lcrparm de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.fecha_emision IS 'Campo fecha emision de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN CNTRLLCP.fecha_emision TEXT IS 'Campo fecha emision de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLLCP.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.monto_original IS 'Campo monto original de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLLCP.monto_original TEXT IS 'Campo monto original de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.saldo_actual IS 'Campo saldo actual de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLLCP.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.banco_corresponsal IS 'Campo banco corresponsal de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN CNTRLLCP.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.pais_destino IS 'Campo pais destino de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.pais_destino IS 'Pais Destino';
LABEL ON COLUMN CNTRLLCP.pais_destino TEXT IS 'Campo pais destino de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.estado_carta IS 'Campo estado carta de la tabla CNTRLLCP.';
LABEL ON COLUMN CNTRLLCP.estado_carta IS 'Estado Carta';
LABEL ON COLUMN CNTRLLCP.estado_carta TEXT IS 'Campo estado carta de la tabla CNTRLLCP.';
COMMENT ON COLUMN CNTRLLCP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLLCP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLLCP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLLCP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLLCP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLLCP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLLCP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLLCP.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLLCP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLLCP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLLCP.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLLCP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLLCP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLLCP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLLCP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLLCP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLLCP.created_at IS 'Created At';
LABEL ON COLUMN CNTRLLCP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLLCP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLLCP.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLLCP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrllcp_created_at ON CNTRLLCP (created_at);

-- TABLA: CNTRLRLC
-- ============================================================================
-- Nombre de la Tabla: CNTRLRLC
-- DESCRIPCIÓN: Tabla de datos para CNTRLRLC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLRLC (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    tipo_producto VARCHAR(20) NOT NULL FOR COLUMN TIPPRO,
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    banco_corresponsal VARCHAR(80) FOR COLUMN BANCOR,
    pais_destino VARCHAR(80) FOR COLUMN PAIDES,
    estado_carta VARCHAR(20) FOR COLUMN ESTCAR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlrlc_pk PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
) RCDFMT CNTRLRLC;
COMMENT ON TABLE CNTRLRLC IS 'Tabla de datos para CNTRLRLC en el módulo bancario.';
LABEL ON TABLE CNTRLRLC IS 'CNTRLRLC';

COMMENT ON COLUMN CNTRLRLC.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLRLC.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLRLC.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLRLC.tipo_producto IS 'Tipo de producto asociado.';
LABEL ON COLUMN CNTRLRLC.tipo_producto IS 'Tipo Producto';
LABEL ON COLUMN CNTRLRLC.tipo_producto TEXT IS 'Tipo de producto asociado.';
COMMENT ON COLUMN CNTRLRLC.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN CNTRLRLC.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN CNTRLRLC.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN CNTRLRLC.fecha_emision IS 'Campo fecha emision de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN CNTRLRLC.fecha_emision TEXT IS 'Campo fecha emision de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLRLC.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.monto_original IS 'Campo monto original de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLRLC.monto_original TEXT IS 'Campo monto original de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.saldo_actual IS 'Campo saldo actual de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CNTRLRLC.saldo_actual TEXT IS 'Campo saldo actual de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.banco_corresponsal IS 'Campo banco corresponsal de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.banco_corresponsal IS 'Banco Corresponsal';
LABEL ON COLUMN CNTRLRLC.banco_corresponsal TEXT IS 'Campo banco corresponsal de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.pais_destino IS 'Campo pais destino de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.pais_destino IS 'Pais Destino';
LABEL ON COLUMN CNTRLRLC.pais_destino TEXT IS 'Campo pais destino de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.estado_carta IS 'Campo estado carta de la tabla CNTRLRLC.';
LABEL ON COLUMN CNTRLRLC.estado_carta IS 'Estado Carta';
LABEL ON COLUMN CNTRLRLC.estado_carta TEXT IS 'Campo estado carta de la tabla CNTRLRLC.';
COMMENT ON COLUMN CNTRLRLC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLRLC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLRLC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLRLC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLRLC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLRLC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLRLC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLRLC.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLRLC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLRLC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLRLC.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLRLC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLRLC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLRLC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLRLC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLRLC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLRLC.created_at IS 'Created At';
LABEL ON COLUMN CNTRLRLC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLRLC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLRLC.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLRLC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlrlc_created_at ON CNTRLRLC (created_at);

-- ============================================================================
-- MODULO 6: COBRANZAS (4 tablas)
-- ============================================================================

-- TABLA: DCMST
-- ============================================================================
-- Nombre de la Tabla: DCMST
-- DESCRIPCIÓN: Tabla de datos para DCMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DCMST (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dcmst_pk PRIMARY KEY (id)
) RCDFMT DCMST;
COMMENT ON TABLE DCMST IS 'Tabla de datos para DCMST en el módulo bancario.';
LABEL ON TABLE DCMST IS 'DCMST';

COMMENT ON COLUMN DCMST.id IS 'Identificador único del registro.';
LABEL ON COLUMN DCMST.id IS 'Id';
LABEL ON COLUMN DCMST.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN DCMST.fecha_recepcion IS 'Campo fecha recepcion de la tabla DCMST.';
LABEL ON COLUMN DCMST.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN DCMST.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla DCMST.';
COMMENT ON COLUMN DCMST.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DCMST.';
LABEL ON COLUMN DCMST.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DCMST.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DCMST.';
COMMENT ON COLUMN DCMST.monto_original IS 'Campo monto original de la tabla DCMST.';
LABEL ON COLUMN DCMST.monto_original IS 'Monto Original';
LABEL ON COLUMN DCMST.monto_original TEXT IS 'Campo monto original de la tabla DCMST.';
COMMENT ON COLUMN DCMST.saldo_pendiente IS 'Campo saldo pendiente de la tabla DCMST.';
LABEL ON COLUMN DCMST.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN DCMST.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla DCMST.';
COMMENT ON COLUMN DCMST.tipo_documento IS 'Campo tipo documento de la tabla DCMST.';
LABEL ON COLUMN DCMST.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN DCMST.tipo_documento TEXT IS 'Campo tipo documento de la tabla DCMST.';
COMMENT ON COLUMN DCMST.estado_operacion IS 'Campo estado operacion de la tabla DCMST.';
LABEL ON COLUMN DCMST.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN DCMST.estado_operacion TEXT IS 'Campo estado operacion de la tabla DCMST.';
COMMENT ON COLUMN DCMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DCMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DCMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DCMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DCMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DCMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DCMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DCMST.version_registro IS 'Version Registro';
LABEL ON COLUMN DCMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DCMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DCMST.observaciones IS 'Observaciones';
LABEL ON COLUMN DCMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DCMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DCMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DCMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DCMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DCMST.created_at IS 'Created At';
LABEL ON COLUMN DCMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DCMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DCMST.updated_at IS 'Updated At';
LABEL ON COLUMN DCMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dcmst_created_at ON DCMST (created_at);

-- TABLA: APPRV
-- ============================================================================
-- Nombre de la Tabla: APPRV
-- DESCRIPCIÓN: Tabla de datos para APPRV en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE APPRV (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_apprv_pk PRIMARY KEY (numero_carta_credito, tipo_registro)
) RCDFMT APPRV;
COMMENT ON TABLE APPRV IS 'Tabla de datos para APPRV en el módulo bancario.';
LABEL ON TABLE APPRV IS 'APPRV';

COMMENT ON COLUMN APPRV.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN APPRV.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN APPRV.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN APPRV.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN APPRV.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN APPRV.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN APPRV.fecha_recepcion IS 'Campo fecha recepcion de la tabla APPRV.';
LABEL ON COLUMN APPRV.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN APPRV.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla APPRV.';
COMMENT ON COLUMN APPRV.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla APPRV.';
LABEL ON COLUMN APPRV.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN APPRV.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla APPRV.';
COMMENT ON COLUMN APPRV.monto_original IS 'Campo monto original de la tabla APPRV.';
LABEL ON COLUMN APPRV.monto_original IS 'Monto Original';
LABEL ON COLUMN APPRV.monto_original TEXT IS 'Campo monto original de la tabla APPRV.';
COMMENT ON COLUMN APPRV.saldo_pendiente IS 'Campo saldo pendiente de la tabla APPRV.';
LABEL ON COLUMN APPRV.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN APPRV.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla APPRV.';
COMMENT ON COLUMN APPRV.tipo_documento IS 'Campo tipo documento de la tabla APPRV.';
LABEL ON COLUMN APPRV.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN APPRV.tipo_documento TEXT IS 'Campo tipo documento de la tabla APPRV.';
COMMENT ON COLUMN APPRV.estado_operacion IS 'Campo estado operacion de la tabla APPRV.';
LABEL ON COLUMN APPRV.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN APPRV.estado_operacion TEXT IS 'Campo estado operacion de la tabla APPRV.';
COMMENT ON COLUMN APPRV.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN APPRV.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN APPRV.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN APPRV.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN APPRV.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN APPRV.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN APPRV.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN APPRV.version_registro IS 'Version Registro';
LABEL ON COLUMN APPRV.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN APPRV.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN APPRV.observaciones IS 'Observaciones';
LABEL ON COLUMN APPRV.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN APPRV.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN APPRV.estado_registro IS 'Estado Registro';
LABEL ON COLUMN APPRV.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN APPRV.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN APPRV.created_at IS 'Created At';
LABEL ON COLUMN APPRV.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN APPRV.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN APPRV.updated_at IS 'Updated At';
LABEL ON COLUMN APPRV.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_apprv_created_at ON APPRV (created_at);

-- TABLA: LCFEE
-- ============================================================================
-- Nombre de la Tabla: LCFEE
-- DESCRIPCIÓN: Tabla de datos para LCFEE en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LCFEE (
    numero_carta_credito VARCHAR(30) NOT NULL FOR COLUMN NUMCARCRE,
    codigo_de_comision VARCHAR(20) NOT NULL FOR COLUMN CODDECOM,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lcfee_pk PRIMARY KEY (numero_carta_credito, codigo_de_comision)
) RCDFMT LCFEE;
COMMENT ON TABLE LCFEE IS 'Tabla de datos para LCFEE en el módulo bancario.';
LABEL ON TABLE LCFEE IS 'LCFEE';

COMMENT ON COLUMN LCFEE.numero_carta_credito IS 'Número de la carta de crédito.';
LABEL ON COLUMN LCFEE.numero_carta_credito IS 'Numero Carta Credito';
LABEL ON COLUMN LCFEE.numero_carta_credito TEXT IS 'Número de la carta de crédito.';
COMMENT ON COLUMN LCFEE.codigo_de_comision IS 'Código del de comision.';
LABEL ON COLUMN LCFEE.codigo_de_comision IS 'Codigo De Comision';
LABEL ON COLUMN LCFEE.codigo_de_comision TEXT IS 'Código del de comision.';
COMMENT ON COLUMN LCFEE.fecha_recepcion IS 'Campo fecha recepcion de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN LCFEE.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LCFEE.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.monto_original IS 'Campo monto original de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.monto_original IS 'Monto Original';
LABEL ON COLUMN LCFEE.monto_original TEXT IS 'Campo monto original de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.saldo_pendiente IS 'Campo saldo pendiente de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN LCFEE.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.tipo_documento IS 'Campo tipo documento de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN LCFEE.tipo_documento TEXT IS 'Campo tipo documento de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.estado_operacion IS 'Campo estado operacion de la tabla LCFEE.';
LABEL ON COLUMN LCFEE.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN LCFEE.estado_operacion TEXT IS 'Campo estado operacion de la tabla LCFEE.';
COMMENT ON COLUMN LCFEE.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LCFEE.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LCFEE.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LCFEE.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LCFEE.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LCFEE.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LCFEE.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LCFEE.version_registro IS 'Version Registro';
LABEL ON COLUMN LCFEE.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LCFEE.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LCFEE.observaciones IS 'Observaciones';
LABEL ON COLUMN LCFEE.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LCFEE.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LCFEE.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LCFEE.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LCFEE.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LCFEE.created_at IS 'Created At';
LABEL ON COLUMN LCFEE.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LCFEE.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LCFEE.updated_at IS 'Updated At';
LABEL ON COLUMN LCFEE.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lcfee_created_at ON LCFEE (created_at);

-- TABLA: CNTRLRCO
-- ============================================================================
-- Nombre de la Tabla: CNTRLRCO
-- DESCRIPCIÓN: Tabla de datos para CNTRLRCO en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLRCO (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    tipo_producto VARCHAR(20) NOT NULL FOR COLUMN TIPPRO,
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    estado_operacion VARCHAR(20) FOR COLUMN ESTOPE,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlrco_pk PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
) RCDFMT CNTRLRCO;
COMMENT ON TABLE CNTRLRCO IS 'Tabla de datos para CNTRLRCO en el módulo bancario.';
LABEL ON TABLE CNTRLRCO IS 'CNTRLRCO';

COMMENT ON COLUMN CNTRLRCO.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLRCO.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLRCO.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLRCO.tipo_producto IS 'Tipo de producto asociado.';
LABEL ON COLUMN CNTRLRCO.tipo_producto IS 'Tipo Producto';
LABEL ON COLUMN CNTRLRCO.tipo_producto TEXT IS 'Tipo de producto asociado.';
COMMENT ON COLUMN CNTRLRCO.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN CNTRLRCO.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN CNTRLRCO.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN CNTRLRCO.fecha_recepcion IS 'Campo fecha recepcion de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN CNTRLRCO.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLRCO.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.monto_original IS 'Campo monto original de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLRCO.monto_original TEXT IS 'Campo monto original de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.saldo_pendiente IS 'Campo saldo pendiente de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN CNTRLRCO.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.tipo_documento IS 'Campo tipo documento de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN CNTRLRCO.tipo_documento TEXT IS 'Campo tipo documento de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.estado_operacion IS 'Campo estado operacion de la tabla CNTRLRCO.';
LABEL ON COLUMN CNTRLRCO.estado_operacion IS 'Estado Operacion';
LABEL ON COLUMN CNTRLRCO.estado_operacion TEXT IS 'Campo estado operacion de la tabla CNTRLRCO.';
COMMENT ON COLUMN CNTRLRCO.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLRCO.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLRCO.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLRCO.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLRCO.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLRCO.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLRCO.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLRCO.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLRCO.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLRCO.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLRCO.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLRCO.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLRCO.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLRCO.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLRCO.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLRCO.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLRCO.created_at IS 'Created At';
LABEL ON COLUMN CNTRLRCO.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLRCO.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLRCO.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLRCO.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlrco_created_at ON CNTRLRCO (created_at);

-- ============================================================================
-- MODULO 7: CONTABILIDAD (9 tablas)
-- ============================================================================

-- TABLA: GLMST
-- ============================================================================
-- Nombre de la Tabla: GLMST
-- DESCRIPCIÓN: Tabla de datos para GLMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE GLMST (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_glmst_pk PRIMARY KEY (codigo_banco, codigo_moneda, cuenta_contable)
) RCDFMT GLMST;
COMMENT ON TABLE GLMST IS 'Tabla de datos para GLMST en el módulo bancario.';
LABEL ON TABLE GLMST IS 'GLMST';

COMMENT ON COLUMN GLMST.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN GLMST.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN GLMST.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN GLMST.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN GLMST.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN GLMST.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN GLMST.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN GLMST.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN GLMST.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN GLMST.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla GLMST.';
LABEL ON COLUMN GLMST.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN GLMST.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla GLMST.';
COMMENT ON COLUMN GLMST.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla GLMST.';
LABEL ON COLUMN GLMST.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN GLMST.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla GLMST.';
COMMENT ON COLUMN GLMST.nivel_cuenta IS 'Campo nivel cuenta de la tabla GLMST.';
LABEL ON COLUMN GLMST.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN GLMST.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla GLMST.';
COMMENT ON COLUMN GLMST.saldo_actual IS 'Campo saldo actual de la tabla GLMST.';
LABEL ON COLUMN GLMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN GLMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla GLMST.';
COMMENT ON COLUMN GLMST.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla GLMST.';
LABEL ON COLUMN GLMST.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN GLMST.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla GLMST.';
COMMENT ON COLUMN GLMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN GLMST.observaciones IS 'Observaciones';
LABEL ON COLUMN GLMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN GLMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN GLMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN GLMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN GLMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN GLMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN GLMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN GLMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN GLMST.version_registro IS 'Version Registro';
LABEL ON COLUMN GLMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN GLMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN GLMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN GLMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN GLMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN GLMST.created_at IS 'Created At';
LABEL ON COLUMN GLMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN GLMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN GLMST.updated_at IS 'Updated At';
LABEL ON COLUMN GLMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_glmst_created_at ON GLMST (created_at);

-- TABLA: INPUT
-- ============================================================================
-- Nombre de la Tabla: INPUT
-- DESCRIPCIÓN: Tabla de datos para INPUT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE INPUT (
    numero_del_lote VARCHAR(30) NOT NULL FOR COLUMN NUMDELLOT,
    secuencia_dentro_del_lote VARCHAR(50) NOT NULL FOR COLUMN SECDENDELL,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_input_pk PRIMARY KEY (numero_del_lote, secuencia_dentro_del_lote)
) RCDFMT INPUT;
COMMENT ON TABLE INPUT IS 'Tabla de datos para INPUT en el módulo bancario.';
LABEL ON TABLE INPUT IS 'INPUT';

COMMENT ON COLUMN INPUT.numero_del_lote IS 'Número del del lote.';
LABEL ON COLUMN INPUT.numero_del_lote IS 'Numero Del Lote';
LABEL ON COLUMN INPUT.numero_del_lote TEXT IS 'Número del del lote.';
COMMENT ON COLUMN INPUT.secuencia_dentro_del_lote IS 'Campo secuencia dentro del lote de la tabla INPUT.';
LABEL ON COLUMN INPUT.secuencia_dentro_del_lote IS 'Secuencia Dentro Del Lote';
LABEL ON COLUMN INPUT.secuencia_dentro_del_lote TEXT IS 'Campo secuencia dentro del lote de la tabla INPUT.';
COMMENT ON COLUMN INPUT.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla INPUT.';
LABEL ON COLUMN INPUT.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN INPUT.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla INPUT.';
COMMENT ON COLUMN INPUT.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla INPUT.';
LABEL ON COLUMN INPUT.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN INPUT.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla INPUT.';
COMMENT ON COLUMN INPUT.nivel_cuenta IS 'Campo nivel cuenta de la tabla INPUT.';
LABEL ON COLUMN INPUT.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN INPUT.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla INPUT.';
COMMENT ON COLUMN INPUT.saldo_actual IS 'Campo saldo actual de la tabla INPUT.';
LABEL ON COLUMN INPUT.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN INPUT.saldo_actual TEXT IS 'Campo saldo actual de la tabla INPUT.';
COMMENT ON COLUMN INPUT.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla INPUT.';
LABEL ON COLUMN INPUT.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN INPUT.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla INPUT.';
COMMENT ON COLUMN INPUT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN INPUT.observaciones IS 'Observaciones';
LABEL ON COLUMN INPUT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN INPUT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN INPUT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN INPUT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN INPUT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN INPUT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN INPUT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN INPUT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN INPUT.version_registro IS 'Version Registro';
LABEL ON COLUMN INPUT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN INPUT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN INPUT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN INPUT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN INPUT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN INPUT.created_at IS 'Created At';
LABEL ON COLUMN INPUT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN INPUT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN INPUT.updated_at IS 'Updated At';
LABEL ON COLUMN INPUT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_input_created_at ON INPUT (created_at);

-- TABLA: GLBLN
-- ============================================================================
-- Nombre de la Tabla: GLBLN
-- DESCRIPCIÓN: Tabla de datos para GLBLN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE GLBLN (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    cuenta_contable VARCHAR(24) NOT NULL FOR COLUMN CUECON,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_glbln_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
) RCDFMT GLBLN;
COMMENT ON TABLE GLBLN IS 'Tabla de datos para GLBLN en el módulo bancario.';
LABEL ON TABLE GLBLN IS 'GLBLN';

COMMENT ON COLUMN GLBLN.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN GLBLN.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN GLBLN.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN GLBLN.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN GLBLN.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN GLBLN.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN GLBLN.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN GLBLN.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN GLBLN.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN GLBLN.cuenta_contable IS 'Cuenta contable asociada al registro.';
LABEL ON COLUMN GLBLN.cuenta_contable IS 'Cuenta Contable';
LABEL ON COLUMN GLBLN.cuenta_contable TEXT IS 'Cuenta contable asociada al registro.';
COMMENT ON COLUMN GLBLN.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla GLBLN.';
LABEL ON COLUMN GLBLN.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN GLBLN.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla GLBLN.';
COMMENT ON COLUMN GLBLN.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla GLBLN.';
LABEL ON COLUMN GLBLN.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN GLBLN.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla GLBLN.';
COMMENT ON COLUMN GLBLN.nivel_cuenta IS 'Campo nivel cuenta de la tabla GLBLN.';
LABEL ON COLUMN GLBLN.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN GLBLN.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla GLBLN.';
COMMENT ON COLUMN GLBLN.saldo_actual IS 'Campo saldo actual de la tabla GLBLN.';
LABEL ON COLUMN GLBLN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN GLBLN.saldo_actual TEXT IS 'Campo saldo actual de la tabla GLBLN.';
COMMENT ON COLUMN GLBLN.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla GLBLN.';
LABEL ON COLUMN GLBLN.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN GLBLN.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla GLBLN.';
COMMENT ON COLUMN GLBLN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN GLBLN.observaciones IS 'Observaciones';
LABEL ON COLUMN GLBLN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN GLBLN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN GLBLN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN GLBLN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN GLBLN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN GLBLN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN GLBLN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN GLBLN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN GLBLN.version_registro IS 'Version Registro';
LABEL ON COLUMN GLBLN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN GLBLN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN GLBLN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN GLBLN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN GLBLN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN GLBLN.created_at IS 'Created At';
LABEL ON COLUMN GLBLN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN GLBLN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN GLBLN.updated_at IS 'Updated At';
LABEL ON COLUMN GLBLN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_glbln_created_at ON GLBLN (created_at);

-- TABLA: GLBSE
-- ============================================================================
-- Nombre de la Tabla: GLBSE
-- DESCRIPCIÓN: Tabla de datos para GLBSE en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE GLBSE (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_glbse_pk PRIMARY KEY (id)
) RCDFMT GLBSE;
COMMENT ON TABLE GLBSE IS 'Tabla de datos para GLBSE en el módulo bancario.';
LABEL ON TABLE GLBSE IS 'GLBSE';

COMMENT ON COLUMN GLBSE.id IS 'Identificador único del registro.';
LABEL ON COLUMN GLBSE.id IS 'Id';
LABEL ON COLUMN GLBSE.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN GLBSE.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla GLBSE.';
LABEL ON COLUMN GLBSE.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN GLBSE.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla GLBSE.';
COMMENT ON COLUMN GLBSE.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla GLBSE.';
LABEL ON COLUMN GLBSE.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN GLBSE.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla GLBSE.';
COMMENT ON COLUMN GLBSE.nivel_cuenta IS 'Campo nivel cuenta de la tabla GLBSE.';
LABEL ON COLUMN GLBSE.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN GLBSE.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla GLBSE.';
COMMENT ON COLUMN GLBSE.saldo_actual IS 'Campo saldo actual de la tabla GLBSE.';
LABEL ON COLUMN GLBSE.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN GLBSE.saldo_actual TEXT IS 'Campo saldo actual de la tabla GLBSE.';
COMMENT ON COLUMN GLBSE.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla GLBSE.';
LABEL ON COLUMN GLBSE.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN GLBSE.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla GLBSE.';
COMMENT ON COLUMN GLBSE.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN GLBSE.observaciones IS 'Observaciones';
LABEL ON COLUMN GLBSE.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN GLBSE.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN GLBSE.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN GLBSE.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN GLBSE.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN GLBSE.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN GLBSE.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN GLBSE.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN GLBSE.version_registro IS 'Version Registro';
LABEL ON COLUMN GLBSE.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN GLBSE.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN GLBSE.estado_registro IS 'Estado Registro';
LABEL ON COLUMN GLBSE.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN GLBSE.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN GLBSE.created_at IS 'Created At';
LABEL ON COLUMN GLBSE.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN GLBSE.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN GLBSE.updated_at IS 'Updated At';
LABEL ON COLUMN GLBSE.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_glbse_created_at ON GLBSE (created_at);

-- TABLA: GLFIN
-- ============================================================================
-- Nombre de la Tabla: GLFIN
-- DESCRIPCIÓN: Tabla de datos para GLFIN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE GLFIN (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_glfin_pk PRIMARY KEY (id)
) RCDFMT GLFIN;
COMMENT ON TABLE GLFIN IS 'Tabla de datos para GLFIN en el módulo bancario.';
LABEL ON TABLE GLFIN IS 'GLFIN';

COMMENT ON COLUMN GLFIN.id IS 'Identificador único del registro.';
LABEL ON COLUMN GLFIN.id IS 'Id';
LABEL ON COLUMN GLFIN.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN GLFIN.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla GLFIN.';
LABEL ON COLUMN GLFIN.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN GLFIN.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla GLFIN.';
COMMENT ON COLUMN GLFIN.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla GLFIN.';
LABEL ON COLUMN GLFIN.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN GLFIN.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla GLFIN.';
COMMENT ON COLUMN GLFIN.nivel_cuenta IS 'Campo nivel cuenta de la tabla GLFIN.';
LABEL ON COLUMN GLFIN.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN GLFIN.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla GLFIN.';
COMMENT ON COLUMN GLFIN.saldo_actual IS 'Campo saldo actual de la tabla GLFIN.';
LABEL ON COLUMN GLFIN.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN GLFIN.saldo_actual TEXT IS 'Campo saldo actual de la tabla GLFIN.';
COMMENT ON COLUMN GLFIN.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla GLFIN.';
LABEL ON COLUMN GLFIN.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN GLFIN.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla GLFIN.';
COMMENT ON COLUMN GLFIN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN GLFIN.observaciones IS 'Observaciones';
LABEL ON COLUMN GLFIN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN GLFIN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN GLFIN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN GLFIN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN GLFIN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN GLFIN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN GLFIN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN GLFIN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN GLFIN.version_registro IS 'Version Registro';
LABEL ON COLUMN GLFIN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN GLFIN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN GLFIN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN GLFIN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN GLFIN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN GLFIN.created_at IS 'Created At';
LABEL ON COLUMN GLFIN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN GLFIN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN GLFIN.updated_at IS 'Updated At';
LABEL ON COLUMN GLFIN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_glfin_created_at ON GLFIN (created_at);

-- TABLA: CCDSC
-- ============================================================================
-- Nombre de la Tabla: CCDSC
-- DESCRIPCIÓN: Tabla de datos para CCDSC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CCDSC (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ccdsc_pk PRIMARY KEY (id)
) RCDFMT CCDSC;
COMMENT ON TABLE CCDSC IS 'Tabla de datos para CCDSC en el módulo bancario.';
LABEL ON TABLE CCDSC IS 'CCDSC';

COMMENT ON COLUMN CCDSC.id IS 'Identificador único del registro.';
LABEL ON COLUMN CCDSC.id IS 'Id';
LABEL ON COLUMN CCDSC.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN CCDSC.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla CCDSC.';
LABEL ON COLUMN CCDSC.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN CCDSC.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla CCDSC.';
COMMENT ON COLUMN CCDSC.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla CCDSC.';
LABEL ON COLUMN CCDSC.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN CCDSC.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla CCDSC.';
COMMENT ON COLUMN CCDSC.nivel_cuenta IS 'Campo nivel cuenta de la tabla CCDSC.';
LABEL ON COLUMN CCDSC.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN CCDSC.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla CCDSC.';
COMMENT ON COLUMN CCDSC.saldo_actual IS 'Campo saldo actual de la tabla CCDSC.';
LABEL ON COLUMN CCDSC.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN CCDSC.saldo_actual TEXT IS 'Campo saldo actual de la tabla CCDSC.';
COMMENT ON COLUMN CCDSC.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla CCDSC.';
LABEL ON COLUMN CCDSC.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN CCDSC.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla CCDSC.';
COMMENT ON COLUMN CCDSC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CCDSC.observaciones IS 'Observaciones';
LABEL ON COLUMN CCDSC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CCDSC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CCDSC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CCDSC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CCDSC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CCDSC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CCDSC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CCDSC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CCDSC.version_registro IS 'Version Registro';
LABEL ON COLUMN CCDSC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CCDSC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CCDSC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CCDSC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CCDSC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CCDSC.created_at IS 'Created At';
LABEL ON COLUMN CCDSC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CCDSC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CCDSC.updated_at IS 'Updated At';
LABEL ON COLUMN CCDSC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ccdsc_created_at ON CCDSC (created_at);

-- TABLA: INPT2
-- ============================================================================
-- Nombre de la Tabla: INPT2
-- DESCRIPCIÓN: Tabla de datos para INPT2 en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE INPT2 (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) FOR COLUMN ID,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_inpt2_pk PRIMARY KEY (id)
) RCDFMT INPT2;
COMMENT ON TABLE INPT2 IS 'Tabla de datos para INPT2 en el módulo bancario.';
LABEL ON TABLE INPT2 IS 'INPT2';

COMMENT ON COLUMN INPT2.id IS 'Identificador único del registro.';
LABEL ON COLUMN INPT2.id IS 'Id';
LABEL ON COLUMN INPT2.id TEXT IS 'Identificador único del registro.';
COMMENT ON COLUMN INPT2.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla INPT2.';
LABEL ON COLUMN INPT2.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN INPT2.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla INPT2.';
COMMENT ON COLUMN INPT2.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla INPT2.';
LABEL ON COLUMN INPT2.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN INPT2.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla INPT2.';
COMMENT ON COLUMN INPT2.nivel_cuenta IS 'Campo nivel cuenta de la tabla INPT2.';
LABEL ON COLUMN INPT2.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN INPT2.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla INPT2.';
COMMENT ON COLUMN INPT2.saldo_actual IS 'Campo saldo actual de la tabla INPT2.';
LABEL ON COLUMN INPT2.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN INPT2.saldo_actual TEXT IS 'Campo saldo actual de la tabla INPT2.';
COMMENT ON COLUMN INPT2.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla INPT2.';
LABEL ON COLUMN INPT2.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN INPT2.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla INPT2.';
COMMENT ON COLUMN INPT2.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN INPT2.observaciones IS 'Observaciones';
LABEL ON COLUMN INPT2.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN INPT2.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN INPT2.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN INPT2.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN INPT2.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN INPT2.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN INPT2.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN INPT2.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN INPT2.version_registro IS 'Version Registro';
LABEL ON COLUMN INPT2.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN INPT2.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN INPT2.estado_registro IS 'Estado Registro';
LABEL ON COLUMN INPT2.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN INPT2.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN INPT2.created_at IS 'Created At';
LABEL ON COLUMN INPT2.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN INPT2.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN INPT2.updated_at IS 'Updated At';
LABEL ON COLUMN INPT2.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_inpt2_created_at ON INPT2 (created_at);

-- TABLA: NXINP
-- ============================================================================
-- Nombre de la Tabla: NXINP
-- DESCRIPCIÓN: Tabla de datos para NXINP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE NXINP (
    numero_batch VARCHAR(30) NOT NULL FOR COLUMN NUMBAT,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_nxinp_pk PRIMARY KEY (numero_batch, secuencia)
) RCDFMT NXINP;
COMMENT ON TABLE NXINP IS 'Tabla de datos para NXINP en el módulo bancario.';
LABEL ON TABLE NXINP IS 'NXINP';

COMMENT ON COLUMN NXINP.numero_batch IS 'Número del batch.';
LABEL ON COLUMN NXINP.numero_batch IS 'Numero Batch';
LABEL ON COLUMN NXINP.numero_batch TEXT IS 'Número del batch.';
COMMENT ON COLUMN NXINP.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN NXINP.secuencia IS 'Secuencia';
LABEL ON COLUMN NXINP.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN NXINP.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla NXINP.';
LABEL ON COLUMN NXINP.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN NXINP.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla NXINP.';
COMMENT ON COLUMN NXINP.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla NXINP.';
LABEL ON COLUMN NXINP.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN NXINP.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla NXINP.';
COMMENT ON COLUMN NXINP.nivel_cuenta IS 'Campo nivel cuenta de la tabla NXINP.';
LABEL ON COLUMN NXINP.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN NXINP.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla NXINP.';
COMMENT ON COLUMN NXINP.saldo_actual IS 'Campo saldo actual de la tabla NXINP.';
LABEL ON COLUMN NXINP.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN NXINP.saldo_actual TEXT IS 'Campo saldo actual de la tabla NXINP.';
COMMENT ON COLUMN NXINP.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla NXINP.';
LABEL ON COLUMN NXINP.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN NXINP.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla NXINP.';
COMMENT ON COLUMN NXINP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN NXINP.observaciones IS 'Observaciones';
LABEL ON COLUMN NXINP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN NXINP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN NXINP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN NXINP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN NXINP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN NXINP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN NXINP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN NXINP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN NXINP.version_registro IS 'Version Registro';
LABEL ON COLUMN NXINP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN NXINP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN NXINP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN NXINP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN NXINP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN NXINP.created_at IS 'Created At';
LABEL ON COLUMN NXINP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN NXINP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN NXINP.updated_at IS 'Updated At';
LABEL ON COLUMN NXINP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_nxinp_created_at ON NXINP (created_at);

-- TABLA: BUMST
-- ============================================================================
-- Nombre de la Tabla: BUMST
-- DESCRIPCIÓN: Tabla de datos para BUMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BUMST (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_presupuesto VARCHAR(30) NOT NULL FOR COLUMN NUMPRE,
    centro_costo VARCHAR(50) NOT NULL FOR COLUMN CENCOS,
    descripcion_cuenta VARCHAR(120) FOR COLUMN DESCUE,
    naturaleza_cuenta VARCHAR(20) FOR COLUMN NATCUE,
    nivel_cuenta VARCHAR(50) FOR COLUMN NIVCUE,
    saldo_actual DECIMAL(18,2) FOR COLUMN SALACT,
    fecha_proceso_sistema TIMESTAMP FOR COLUMN FECPROSIS,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_bumst_pk PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_presupuesto, centro_costo)
) RCDFMT BUMST;
COMMENT ON TABLE BUMST IS 'Tabla de datos para BUMST en el módulo bancario.';
LABEL ON TABLE BUMST IS 'BUMST';

COMMENT ON COLUMN BUMST.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN BUMST.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN BUMST.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN BUMST.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN BUMST.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN BUMST.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN BUMST.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN BUMST.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN BUMST.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN BUMST.numero_presupuesto IS 'Número del presupuesto.';
LABEL ON COLUMN BUMST.numero_presupuesto IS 'Numero Presupuesto';
LABEL ON COLUMN BUMST.numero_presupuesto TEXT IS 'Número del presupuesto.';
COMMENT ON COLUMN BUMST.centro_costo IS 'Campo centro costo de la tabla BUMST.';
LABEL ON COLUMN BUMST.centro_costo IS 'Centro Costo';
LABEL ON COLUMN BUMST.centro_costo TEXT IS 'Campo centro costo de la tabla BUMST.';
COMMENT ON COLUMN BUMST.descripcion_cuenta IS 'Campo descripcion cuenta de la tabla BUMST.';
LABEL ON COLUMN BUMST.descripcion_cuenta IS 'Descripcion Cuenta';
LABEL ON COLUMN BUMST.descripcion_cuenta TEXT IS 'Campo descripcion cuenta de la tabla BUMST.';
COMMENT ON COLUMN BUMST.naturaleza_cuenta IS 'Campo naturaleza cuenta de la tabla BUMST.';
LABEL ON COLUMN BUMST.naturaleza_cuenta IS 'Naturaleza Cuenta';
LABEL ON COLUMN BUMST.naturaleza_cuenta TEXT IS 'Campo naturaleza cuenta de la tabla BUMST.';
COMMENT ON COLUMN BUMST.nivel_cuenta IS 'Campo nivel cuenta de la tabla BUMST.';
LABEL ON COLUMN BUMST.nivel_cuenta IS 'Nivel Cuenta';
LABEL ON COLUMN BUMST.nivel_cuenta TEXT IS 'Campo nivel cuenta de la tabla BUMST.';
COMMENT ON COLUMN BUMST.saldo_actual IS 'Campo saldo actual de la tabla BUMST.';
LABEL ON COLUMN BUMST.saldo_actual IS 'Saldo Actual';
LABEL ON COLUMN BUMST.saldo_actual TEXT IS 'Campo saldo actual de la tabla BUMST.';
COMMENT ON COLUMN BUMST.fecha_proceso_sistema IS 'Campo fecha proceso sistema de la tabla BUMST.';
LABEL ON COLUMN BUMST.fecha_proceso_sistema IS 'Fecha Proceso Sistema';
LABEL ON COLUMN BUMST.fecha_proceso_sistema TEXT IS 'Campo fecha proceso sistema de la tabla BUMST.';
COMMENT ON COLUMN BUMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BUMST.observaciones IS 'Observaciones';
LABEL ON COLUMN BUMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BUMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BUMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BUMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BUMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BUMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BUMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BUMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BUMST.version_registro IS 'Version Registro';
LABEL ON COLUMN BUMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BUMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BUMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BUMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BUMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BUMST.created_at IS 'Created At';
LABEL ON COLUMN BUMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BUMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BUMST.updated_at IS 'Updated At';
LABEL ON COLUMN BUMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_bumst_created_at ON BUMST (created_at);

-- ============================================================================
-- MODULO 8: GARANTÍAS (2 tablas)
-- ============================================================================

-- TABLA: ROCOL
-- ============================================================================
-- Nombre de la Tabla: ROCOL
-- DESCRIPCIÓN: Tabla de datos para ROCOL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE ROCOL (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_garantia VARCHAR(30) NOT NULL FOR COLUMN NUMGAR,
    tipo_garantia VARCHAR(20) FOR COLUMN TIPGAR,
    valor_garantia DECIMAL(18,2) FOR COLUMN VALGAR,
    fecha_avaluo DATE FOR COLUMN FECAVA,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_garantia VARCHAR(20) FOR COLUMN ESTGAR,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_rocol_pk PRIMARY KEY (codigo_banco, id_cliente, numero_garantia)
) RCDFMT ROCOL;
COMMENT ON TABLE ROCOL IS 'Tabla de datos para ROCOL en el módulo bancario.';
LABEL ON TABLE ROCOL IS 'ROCOL';

COMMENT ON COLUMN ROCOL.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN ROCOL.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN ROCOL.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN ROCOL.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN ROCOL.id_cliente IS 'Id Cliente';
LABEL ON COLUMN ROCOL.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN ROCOL.numero_garantia IS 'Número del garantia.';
LABEL ON COLUMN ROCOL.numero_garantia IS 'Numero Garantia';
LABEL ON COLUMN ROCOL.numero_garantia TEXT IS 'Número del garantia.';
COMMENT ON COLUMN ROCOL.tipo_garantia IS 'Campo tipo garantia de la tabla ROCOL.';
LABEL ON COLUMN ROCOL.tipo_garantia IS 'Tipo Garantia';
LABEL ON COLUMN ROCOL.tipo_garantia TEXT IS 'Campo tipo garantia de la tabla ROCOL.';
COMMENT ON COLUMN ROCOL.valor_garantia IS 'Campo valor garantia de la tabla ROCOL.';
LABEL ON COLUMN ROCOL.valor_garantia IS 'Valor Garantia';
LABEL ON COLUMN ROCOL.valor_garantia TEXT IS 'Campo valor garantia de la tabla ROCOL.';
COMMENT ON COLUMN ROCOL.fecha_avaluo IS 'Campo fecha avaluo de la tabla ROCOL.';
LABEL ON COLUMN ROCOL.fecha_avaluo IS 'Fecha Avaluo';
LABEL ON COLUMN ROCOL.fecha_avaluo TEXT IS 'Campo fecha avaluo de la tabla ROCOL.';
COMMENT ON COLUMN ROCOL.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla ROCOL.';
LABEL ON COLUMN ROCOL.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN ROCOL.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla ROCOL.';
COMMENT ON COLUMN ROCOL.estado_garantia IS 'Campo estado garantia de la tabla ROCOL.';
LABEL ON COLUMN ROCOL.estado_garantia IS 'Estado Garantia';
LABEL ON COLUMN ROCOL.estado_garantia TEXT IS 'Campo estado garantia de la tabla ROCOL.';
COMMENT ON COLUMN ROCOL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN ROCOL.observaciones IS 'Observaciones';
LABEL ON COLUMN ROCOL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN ROCOL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN ROCOL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN ROCOL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN ROCOL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN ROCOL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN ROCOL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN ROCOL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN ROCOL.version_registro IS 'Version Registro';
LABEL ON COLUMN ROCOL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN ROCOL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN ROCOL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN ROCOL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN ROCOL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN ROCOL.created_at IS 'Created At';
LABEL ON COLUMN ROCOL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN ROCOL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN ROCOL.updated_at IS 'Updated At';
LABEL ON COLUMN ROCOL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_rocol_created_at ON ROCOL (created_at);

-- TABLA: RCOLL
-- ============================================================================
-- Nombre de la Tabla: RCOLL
-- DESCRIPCIÓN: Tabla de datos para RCOLL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE RCOLL (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    cuenta_a_garantizar VARCHAR(50) NOT NULL FOR COLUMN CUEAGAR,
    cuenta_que_garantiza VARCHAR(50) NOT NULL FOR COLUMN CUEQUEGAR,
    tipo_garantia VARCHAR(20) FOR COLUMN TIPGAR,
    valor_garantia DECIMAL(18,2) FOR COLUMN VALGAR,
    fecha_avaluo DATE FOR COLUMN FECAVA,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_garantia VARCHAR(20) FOR COLUMN ESTGAR,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_rcoll_pk PRIMARY KEY (codigo_banco, cuenta_a_garantizar, cuenta_que_garantiza)
) RCDFMT RCOLL;
COMMENT ON TABLE RCOLL IS 'Tabla de datos para RCOLL en el módulo bancario.';
LABEL ON TABLE RCOLL IS 'RCOLL';

COMMENT ON COLUMN RCOLL.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN RCOLL.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN RCOLL.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN RCOLL.cuenta_a_garantizar IS 'Campo cuenta a garantizar de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.cuenta_a_garantizar IS 'Cuenta A Garantizar';
LABEL ON COLUMN RCOLL.cuenta_a_garantizar TEXT IS 'Campo cuenta a garantizar de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.cuenta_que_garantiza IS 'Campo cuenta que garantiza de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.cuenta_que_garantiza IS 'Cuenta Que Garantiza';
LABEL ON COLUMN RCOLL.cuenta_que_garantiza TEXT IS 'Campo cuenta que garantiza de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.tipo_garantia IS 'Campo tipo garantia de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.tipo_garantia IS 'Tipo Garantia';
LABEL ON COLUMN RCOLL.tipo_garantia TEXT IS 'Campo tipo garantia de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.valor_garantia IS 'Campo valor garantia de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.valor_garantia IS 'Valor Garantia';
LABEL ON COLUMN RCOLL.valor_garantia TEXT IS 'Campo valor garantia de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.fecha_avaluo IS 'Campo fecha avaluo de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.fecha_avaluo IS 'Fecha Avaluo';
LABEL ON COLUMN RCOLL.fecha_avaluo TEXT IS 'Campo fecha avaluo de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN RCOLL.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.estado_garantia IS 'Campo estado garantia de la tabla RCOLL.';
LABEL ON COLUMN RCOLL.estado_garantia IS 'Estado Garantia';
LABEL ON COLUMN RCOLL.estado_garantia TEXT IS 'Campo estado garantia de la tabla RCOLL.';
COMMENT ON COLUMN RCOLL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN RCOLL.observaciones IS 'Observaciones';
LABEL ON COLUMN RCOLL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN RCOLL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN RCOLL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN RCOLL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN RCOLL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN RCOLL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN RCOLL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN RCOLL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN RCOLL.version_registro IS 'Version Registro';
LABEL ON COLUMN RCOLL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN RCOLL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN RCOLL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN RCOLL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN RCOLL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN RCOLL.created_at IS 'Created At';
LABEL ON COLUMN RCOLL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN RCOLL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN RCOLL.updated_at IS 'Updated At';
LABEL ON COLUMN RCOLL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_rcoll_created_at ON RCOLL (created_at);

-- ============================================================================
-- MODULO 9: LINEAS DE CRÉDITO (1 tabla)
-- ============================================================================

-- TABLA: LNECR
-- ============================================================================
-- Nombre de la Tabla: LNECR
-- DESCRIPCIÓN: Tabla de datos para LNECR en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LNECR (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_linea VARCHAR(30) NOT NULL FOR COLUMN NUMLIN,
    fecha_aprobacion DATE FOR COLUMN FECAPR,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    monto_aprobado DECIMAL(18,2) FOR COLUMN MONAPR,
    monto_utilizado DECIMAL(18,2) FOR COLUMN MONUTI,
    monto_disponible DECIMAL(18,2) FOR COLUMN MONDIS,
    estado_linea VARCHAR(20) FOR COLUMN ESTLIN,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_lnecr_pk PRIMARY KEY (id_cliente, numero_linea)
) RCDFMT LNECR;
COMMENT ON TABLE LNECR IS 'Tabla de datos para LNECR en el módulo bancario.';
LABEL ON TABLE LNECR IS 'LNECR';

COMMENT ON COLUMN LNECR.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN LNECR.id_cliente IS 'Id Cliente';
LABEL ON COLUMN LNECR.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN LNECR.numero_linea IS 'Número de línea.';
LABEL ON COLUMN LNECR.numero_linea IS 'Numero Linea';
LABEL ON COLUMN LNECR.numero_linea TEXT IS 'Número de línea.';
COMMENT ON COLUMN LNECR.fecha_aprobacion IS 'Campo fecha aprobacion de la tabla LNECR.';
LABEL ON COLUMN LNECR.fecha_aprobacion IS 'Fecha Aprobacion';
LABEL ON COLUMN LNECR.fecha_aprobacion TEXT IS 'Campo fecha aprobacion de la tabla LNECR.';
COMMENT ON COLUMN LNECR.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla LNECR.';
LABEL ON COLUMN LNECR.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN LNECR.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla LNECR.';
COMMENT ON COLUMN LNECR.monto_aprobado IS 'Campo monto aprobado de la tabla LNECR.';
LABEL ON COLUMN LNECR.monto_aprobado IS 'Monto Aprobado';
LABEL ON COLUMN LNECR.monto_aprobado TEXT IS 'Campo monto aprobado de la tabla LNECR.';
COMMENT ON COLUMN LNECR.monto_utilizado IS 'Campo monto utilizado de la tabla LNECR.';
LABEL ON COLUMN LNECR.monto_utilizado IS 'Monto Utilizado';
LABEL ON COLUMN LNECR.monto_utilizado TEXT IS 'Campo monto utilizado de la tabla LNECR.';
COMMENT ON COLUMN LNECR.monto_disponible IS 'Campo monto disponible de la tabla LNECR.';
LABEL ON COLUMN LNECR.monto_disponible IS 'Monto Disponible';
LABEL ON COLUMN LNECR.monto_disponible TEXT IS 'Campo monto disponible de la tabla LNECR.';
COMMENT ON COLUMN LNECR.estado_linea IS 'Campo estado linea de la tabla LNECR.';
LABEL ON COLUMN LNECR.estado_linea IS 'Estado Linea';
LABEL ON COLUMN LNECR.estado_linea TEXT IS 'Campo estado linea de la tabla LNECR.';
COMMENT ON COLUMN LNECR.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LNECR.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LNECR.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LNECR.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LNECR.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LNECR.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LNECR.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LNECR.version_registro IS 'Version Registro';
LABEL ON COLUMN LNECR.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LNECR.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LNECR.observaciones IS 'Observaciones';
LABEL ON COLUMN LNECR.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LNECR.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LNECR.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LNECR.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LNECR.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LNECR.created_at IS 'Created At';
LABEL ON COLUMN LNECR.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LNECR.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LNECR.updated_at IS 'Updated At';
LABEL ON COLUMN LNECR.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_lnecr_created_at ON LNECR (created_at);

-- ============================================================================
-- MODULO 10: ACTIVOS FIJOS (4 tablas)
-- ============================================================================

-- TABLA: FIXMS
-- ============================================================================
-- Nombre de la Tabla: FIXMS
-- DESCRIPCIÓN: Tabla de datos para FIXMS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE FIXMS (
    numero_activo VARCHAR(30) NOT NULL FOR COLUMN NUMACT,
    descripcion VARCHAR(120) FOR COLUMN DES,
    fecha_adquisicion DATE FOR COLUMN FECADQ,
    valor_adquisicion DECIMAL(18,2) FOR COLUMN VALADQ,
    vida_util_meses INTEGER FOR COLUMN VIDUTIMES,
    depreciacion_acumulada DECIMAL(18,2) FOR COLUMN DEPACU,
    estado_activo VARCHAR(20) FOR COLUMN ESTACT,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_fixms_pk PRIMARY KEY (numero_activo)
) RCDFMT FIXMS;
COMMENT ON TABLE FIXMS IS 'Tabla de datos para FIXMS en el módulo bancario.';
LABEL ON TABLE FIXMS IS 'FIXMS';

COMMENT ON COLUMN FIXMS.numero_activo IS 'Número del activo.';
LABEL ON COLUMN FIXMS.numero_activo IS 'Numero Activo';
LABEL ON COLUMN FIXMS.numero_activo TEXT IS 'Número del activo.';
COMMENT ON COLUMN FIXMS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN FIXMS.descripcion IS 'Descripcion';
LABEL ON COLUMN FIXMS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN FIXMS.fecha_adquisicion IS 'Campo fecha adquisicion de la tabla FIXMS.';
LABEL ON COLUMN FIXMS.fecha_adquisicion IS 'Fecha Adquisicion';
LABEL ON COLUMN FIXMS.fecha_adquisicion TEXT IS 'Campo fecha adquisicion de la tabla FIXMS.';
COMMENT ON COLUMN FIXMS.valor_adquisicion IS 'Campo valor adquisicion de la tabla FIXMS.';
LABEL ON COLUMN FIXMS.valor_adquisicion IS 'Valor Adquisicion';
LABEL ON COLUMN FIXMS.valor_adquisicion TEXT IS 'Campo valor adquisicion de la tabla FIXMS.';
COMMENT ON COLUMN FIXMS.vida_util_meses IS 'Campo vida util meses de la tabla FIXMS.';
LABEL ON COLUMN FIXMS.vida_util_meses IS 'Vida Util Meses';
LABEL ON COLUMN FIXMS.vida_util_meses TEXT IS 'Campo vida util meses de la tabla FIXMS.';
COMMENT ON COLUMN FIXMS.depreciacion_acumulada IS 'Campo depreciacion acumulada de la tabla FIXMS.';
LABEL ON COLUMN FIXMS.depreciacion_acumulada IS 'Depreciacion Acumulada';
LABEL ON COLUMN FIXMS.depreciacion_acumulada TEXT IS 'Campo depreciacion acumulada de la tabla FIXMS.';
COMMENT ON COLUMN FIXMS.estado_activo IS 'Campo estado activo de la tabla FIXMS.';
LABEL ON COLUMN FIXMS.estado_activo IS 'Estado Activo';
LABEL ON COLUMN FIXMS.estado_activo TEXT IS 'Campo estado activo de la tabla FIXMS.';
COMMENT ON COLUMN FIXMS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN FIXMS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN FIXMS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN FIXMS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN FIXMS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN FIXMS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN FIXMS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN FIXMS.version_registro IS 'Version Registro';
LABEL ON COLUMN FIXMS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN FIXMS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN FIXMS.observaciones IS 'Observaciones';
LABEL ON COLUMN FIXMS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN FIXMS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN FIXMS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN FIXMS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN FIXMS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN FIXMS.created_at IS 'Created At';
LABEL ON COLUMN FIXMS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN FIXMS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN FIXMS.updated_at IS 'Updated At';
LABEL ON COLUMN FIXMS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_fixms_created_at ON FIXMS (created_at);

-- TABLA: CLSMS
-- ============================================================================
-- Nombre de la Tabla: CLSMS
-- DESCRIPCIÓN: Tabla de datos para CLSMS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CLSMS (
    codigo_clase VARCHAR(20) NOT NULL FOR COLUMN CODCLA,
    descripcion VARCHAR(120) FOR COLUMN DES,
    fecha_adquisicion DATE FOR COLUMN FECADQ,
    valor_adquisicion DECIMAL(18,2) FOR COLUMN VALADQ,
    vida_util_meses INTEGER FOR COLUMN VIDUTIMES,
    depreciacion_acumulada DECIMAL(18,2) FOR COLUMN DEPACU,
    estado_activo VARCHAR(20) FOR COLUMN ESTACT,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_clsms_pk PRIMARY KEY (codigo_clase)
) RCDFMT CLSMS;
COMMENT ON TABLE CLSMS IS 'Tabla de datos para CLSMS en el módulo bancario.';
LABEL ON TABLE CLSMS IS 'CLSMS';

COMMENT ON COLUMN CLSMS.codigo_clase IS 'Código del clase.';
LABEL ON COLUMN CLSMS.codigo_clase IS 'Codigo Clase';
LABEL ON COLUMN CLSMS.codigo_clase TEXT IS 'Código del clase.';
COMMENT ON COLUMN CLSMS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CLSMS.descripcion IS 'Descripcion';
LABEL ON COLUMN CLSMS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CLSMS.fecha_adquisicion IS 'Campo fecha adquisicion de la tabla CLSMS.';
LABEL ON COLUMN CLSMS.fecha_adquisicion IS 'Fecha Adquisicion';
LABEL ON COLUMN CLSMS.fecha_adquisicion TEXT IS 'Campo fecha adquisicion de la tabla CLSMS.';
COMMENT ON COLUMN CLSMS.valor_adquisicion IS 'Campo valor adquisicion de la tabla CLSMS.';
LABEL ON COLUMN CLSMS.valor_adquisicion IS 'Valor Adquisicion';
LABEL ON COLUMN CLSMS.valor_adquisicion TEXT IS 'Campo valor adquisicion de la tabla CLSMS.';
COMMENT ON COLUMN CLSMS.vida_util_meses IS 'Campo vida util meses de la tabla CLSMS.';
LABEL ON COLUMN CLSMS.vida_util_meses IS 'Vida Util Meses';
LABEL ON COLUMN CLSMS.vida_util_meses TEXT IS 'Campo vida util meses de la tabla CLSMS.';
COMMENT ON COLUMN CLSMS.depreciacion_acumulada IS 'Campo depreciacion acumulada de la tabla CLSMS.';
LABEL ON COLUMN CLSMS.depreciacion_acumulada IS 'Depreciacion Acumulada';
LABEL ON COLUMN CLSMS.depreciacion_acumulada TEXT IS 'Campo depreciacion acumulada de la tabla CLSMS.';
COMMENT ON COLUMN CLSMS.estado_activo IS 'Campo estado activo de la tabla CLSMS.';
LABEL ON COLUMN CLSMS.estado_activo IS 'Estado Activo';
LABEL ON COLUMN CLSMS.estado_activo TEXT IS 'Campo estado activo de la tabla CLSMS.';
COMMENT ON COLUMN CLSMS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CLSMS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CLSMS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CLSMS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CLSMS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CLSMS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CLSMS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CLSMS.version_registro IS 'Version Registro';
LABEL ON COLUMN CLSMS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CLSMS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CLSMS.observaciones IS 'Observaciones';
LABEL ON COLUMN CLSMS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CLSMS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CLSMS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CLSMS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CLSMS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CLSMS.created_at IS 'Created At';
LABEL ON COLUMN CLSMS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CLSMS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CLSMS.updated_at IS 'Updated At';
LABEL ON COLUMN CLSMS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_clsms_created_at ON CLSMS (created_at);

-- TABLA: LOCMS
-- ============================================================================
-- Nombre de la Tabla: LOCMS
-- DESCRIPCIÓN: Tabla de datos para LOCMS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LOCMS (
    numero_localizacion VARCHAR(30) NOT NULL FOR COLUMN NUMLOC,
    descripcion VARCHAR(120) FOR COLUMN DES,
    fecha_adquisicion DATE FOR COLUMN FECADQ,
    valor_adquisicion DECIMAL(18,2) FOR COLUMN VALADQ,
    vida_util_meses INTEGER FOR COLUMN VIDUTIMES,
    depreciacion_acumulada DECIMAL(18,2) FOR COLUMN DEPACU,
    estado_activo VARCHAR(20) FOR COLUMN ESTACT,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_locms_pk PRIMARY KEY (numero_localizacion)
) RCDFMT LOCMS;
COMMENT ON TABLE LOCMS IS 'Tabla de datos para LOCMS en el módulo bancario.';
LABEL ON TABLE LOCMS IS 'LOCMS';

COMMENT ON COLUMN LOCMS.numero_localizacion IS 'Número del localizacion.';
LABEL ON COLUMN LOCMS.numero_localizacion IS 'Numero Localizacion';
LABEL ON COLUMN LOCMS.numero_localizacion TEXT IS 'Número del localizacion.';
COMMENT ON COLUMN LOCMS.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN LOCMS.descripcion IS 'Descripcion';
LABEL ON COLUMN LOCMS.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN LOCMS.fecha_adquisicion IS 'Campo fecha adquisicion de la tabla LOCMS.';
LABEL ON COLUMN LOCMS.fecha_adquisicion IS 'Fecha Adquisicion';
LABEL ON COLUMN LOCMS.fecha_adquisicion TEXT IS 'Campo fecha adquisicion de la tabla LOCMS.';
COMMENT ON COLUMN LOCMS.valor_adquisicion IS 'Campo valor adquisicion de la tabla LOCMS.';
LABEL ON COLUMN LOCMS.valor_adquisicion IS 'Valor Adquisicion';
LABEL ON COLUMN LOCMS.valor_adquisicion TEXT IS 'Campo valor adquisicion de la tabla LOCMS.';
COMMENT ON COLUMN LOCMS.vida_util_meses IS 'Campo vida util meses de la tabla LOCMS.';
LABEL ON COLUMN LOCMS.vida_util_meses IS 'Vida Util Meses';
LABEL ON COLUMN LOCMS.vida_util_meses TEXT IS 'Campo vida util meses de la tabla LOCMS.';
COMMENT ON COLUMN LOCMS.depreciacion_acumulada IS 'Campo depreciacion acumulada de la tabla LOCMS.';
LABEL ON COLUMN LOCMS.depreciacion_acumulada IS 'Depreciacion Acumulada';
LABEL ON COLUMN LOCMS.depreciacion_acumulada TEXT IS 'Campo depreciacion acumulada de la tabla LOCMS.';
COMMENT ON COLUMN LOCMS.estado_activo IS 'Campo estado activo de la tabla LOCMS.';
LABEL ON COLUMN LOCMS.estado_activo IS 'Estado Activo';
LABEL ON COLUMN LOCMS.estado_activo TEXT IS 'Campo estado activo de la tabla LOCMS.';
COMMENT ON COLUMN LOCMS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LOCMS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LOCMS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LOCMS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LOCMS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LOCMS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LOCMS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LOCMS.version_registro IS 'Version Registro';
LABEL ON COLUMN LOCMS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LOCMS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LOCMS.observaciones IS 'Observaciones';
LABEL ON COLUMN LOCMS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LOCMS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LOCMS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LOCMS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LOCMS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LOCMS.created_at IS 'Created At';
LABEL ON COLUMN LOCMS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LOCMS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LOCMS.updated_at IS 'Updated At';
LABEL ON COLUMN LOCMS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_locms_created_at ON LOCMS (created_at);

-- TABLA: CNTRLFIX
-- ============================================================================
-- Nombre de la Tabla: CNTRLFIX
-- DESCRIPCIÓN: Tabla de datos para CNTRLFIX en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLFIX (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    descripcion VARCHAR(120) FOR COLUMN DES,
    fecha_adquisicion DATE FOR COLUMN FECADQ,
    valor_adquisicion DECIMAL(18,2) FOR COLUMN VALADQ,
    vida_util_meses INTEGER FOR COLUMN VIDUTIMES,
    depreciacion_acumulada DECIMAL(18,2) FOR COLUMN DEPACU,
    estado_activo VARCHAR(20) FOR COLUMN ESTACT,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlfix_pk PRIMARY KEY (codigo_banco)
) RCDFMT CNTRLFIX;
COMMENT ON TABLE CNTRLFIX IS 'Tabla de datos para CNTRLFIX en el módulo bancario.';
LABEL ON TABLE CNTRLFIX IS 'CNTRLFIX';

COMMENT ON COLUMN CNTRLFIX.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLFIX.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLFIX.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLFIX.descripcion IS 'Descripción legible del registro.';
LABEL ON COLUMN CNTRLFIX.descripcion IS 'Descripcion';
LABEL ON COLUMN CNTRLFIX.descripcion TEXT IS 'Descripción legible del registro.';
COMMENT ON COLUMN CNTRLFIX.fecha_adquisicion IS 'Campo fecha adquisicion de la tabla CNTRLFIX.';
LABEL ON COLUMN CNTRLFIX.fecha_adquisicion IS 'Fecha Adquisicion';
LABEL ON COLUMN CNTRLFIX.fecha_adquisicion TEXT IS 'Campo fecha adquisicion de la tabla CNTRLFIX.';
COMMENT ON COLUMN CNTRLFIX.valor_adquisicion IS 'Campo valor adquisicion de la tabla CNTRLFIX.';
LABEL ON COLUMN CNTRLFIX.valor_adquisicion IS 'Valor Adquisicion';
LABEL ON COLUMN CNTRLFIX.valor_adquisicion TEXT IS 'Campo valor adquisicion de la tabla CNTRLFIX.';
COMMENT ON COLUMN CNTRLFIX.vida_util_meses IS 'Campo vida util meses de la tabla CNTRLFIX.';
LABEL ON COLUMN CNTRLFIX.vida_util_meses IS 'Vida Util Meses';
LABEL ON COLUMN CNTRLFIX.vida_util_meses TEXT IS 'Campo vida util meses de la tabla CNTRLFIX.';
COMMENT ON COLUMN CNTRLFIX.depreciacion_acumulada IS 'Campo depreciacion acumulada de la tabla CNTRLFIX.';
LABEL ON COLUMN CNTRLFIX.depreciacion_acumulada IS 'Depreciacion Acumulada';
LABEL ON COLUMN CNTRLFIX.depreciacion_acumulada TEXT IS 'Campo depreciacion acumulada de la tabla CNTRLFIX.';
COMMENT ON COLUMN CNTRLFIX.estado_activo IS 'Campo estado activo de la tabla CNTRLFIX.';
LABEL ON COLUMN CNTRLFIX.estado_activo IS 'Estado Activo';
LABEL ON COLUMN CNTRLFIX.estado_activo TEXT IS 'Campo estado activo de la tabla CNTRLFIX.';
COMMENT ON COLUMN CNTRLFIX.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLFIX.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLFIX.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLFIX.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLFIX.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLFIX.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLFIX.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLFIX.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLFIX.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLFIX.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLFIX.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLFIX.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLFIX.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLFIX.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLFIX.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLFIX.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLFIX.created_at IS 'Created At';
LABEL ON COLUMN CNTRLFIX.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLFIX.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLFIX.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLFIX.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlfix_created_at ON CNTRLFIX (created_at);

-- ============================================================================
-- MODULO 11: PROVEEDORES Y CUENTAS POR PAGAR (7 tablas)
-- ============================================================================

-- TABLA: BAVEN
-- ============================================================================
-- Nombre de la Tabla: BAVEN
-- DESCRIPCIÓN: Tabla de datos para BAVEN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BAVEN (
    numero_proveedor VARCHAR(30) NOT NULL FOR COLUMN NUMPRO,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_baven_pk PRIMARY KEY (numero_proveedor)
) RCDFMT BAVEN;
COMMENT ON TABLE BAVEN IS 'Tabla de datos para BAVEN en el módulo bancario.';
LABEL ON TABLE BAVEN IS 'BAVEN';

COMMENT ON COLUMN BAVEN.numero_proveedor IS 'Número del proveedor.';
LABEL ON COLUMN BAVEN.numero_proveedor IS 'Numero Proveedor';
LABEL ON COLUMN BAVEN.numero_proveedor TEXT IS 'Número del proveedor.';
COMMENT ON COLUMN BAVEN.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN BAVEN.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN BAVEN.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN BAVEN.razon_social IS 'Campo razon social de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.razon_social IS 'Razon Social';
LABEL ON COLUMN BAVEN.razon_social TEXT IS 'Campo razon social de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.email IS 'Campo email de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.email IS 'Email';
LABEL ON COLUMN BAVEN.email TEXT IS 'Campo email de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.telefono IS 'Campo telefono de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.telefono IS 'Telefono';
LABEL ON COLUMN BAVEN.telefono TEXT IS 'Campo telefono de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.monto_original IS 'Campo monto original de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.monto_original IS 'Monto Original';
LABEL ON COLUMN BAVEN.monto_original TEXT IS 'Campo monto original de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.saldo_pendiente IS 'Campo saldo pendiente de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN BAVEN.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.fecha_emision IS 'Campo fecha emision de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN BAVEN.fecha_emision TEXT IS 'Campo fecha emision de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN BAVEN.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.estado_cxp IS 'Campo estado cxp de la tabla BAVEN.';
LABEL ON COLUMN BAVEN.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN BAVEN.estado_cxp TEXT IS 'Campo estado cxp de la tabla BAVEN.';
COMMENT ON COLUMN BAVEN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BAVEN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BAVEN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BAVEN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BAVEN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BAVEN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BAVEN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BAVEN.version_registro IS 'Version Registro';
LABEL ON COLUMN BAVEN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BAVEN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BAVEN.observaciones IS 'Observaciones';
LABEL ON COLUMN BAVEN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BAVEN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BAVEN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BAVEN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BAVEN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BAVEN.created_at IS 'Created At';
LABEL ON COLUMN BAVEN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BAVEN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BAVEN.updated_at IS 'Updated At';
LABEL ON COLUMN BAVEN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_baven_created_at ON BAVEN (created_at);

-- TABLA: BAPRC
-- ============================================================================
-- Nombre de la Tabla: BAPRC
-- DESCRIPCIÓN: Tabla de datos para BAPRC en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BAPRC (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    origen_cuenta VARCHAR(20) NOT NULL FOR COLUMN ORICUE,
    tipo_cuenta VARCHAR(20) NOT NULL FOR COLUMN TIPOCUENTA,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_baprc_pk PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
) RCDFMT BAPRC;
COMMENT ON TABLE BAPRC IS 'Tabla de datos para BAPRC en el módulo bancario.';
LABEL ON TABLE BAPRC IS 'BAPRC';

COMMENT ON COLUMN BAPRC.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN BAPRC.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN BAPRC.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN BAPRC.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN BAPRC.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN BAPRC.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN BAPRC.origen_cuenta IS 'Campo origen cuenta de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.origen_cuenta IS 'Origen Cuenta';
LABEL ON COLUMN BAPRC.origen_cuenta TEXT IS 'Campo origen cuenta de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.tipo_cuenta IS 'Campo tipo cuenta de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.tipo_cuenta IS 'Tipo Cuenta';
LABEL ON COLUMN BAPRC.tipo_cuenta TEXT IS 'Campo tipo cuenta de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN BAPRC.id_cliente IS 'Id Cliente';
LABEL ON COLUMN BAPRC.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN BAPRC.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN BAPRC.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN BAPRC.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN BAPRC.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN BAPRC.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN BAPRC.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN BAPRC.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN BAPRC.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN BAPRC.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN BAPRC.razon_social IS 'Campo razon social de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.razon_social IS 'Razon Social';
LABEL ON COLUMN BAPRC.razon_social TEXT IS 'Campo razon social de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.email IS 'Campo email de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.email IS 'Email';
LABEL ON COLUMN BAPRC.email TEXT IS 'Campo email de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.telefono IS 'Campo telefono de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.telefono IS 'Telefono';
LABEL ON COLUMN BAPRC.telefono TEXT IS 'Campo telefono de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.monto_original IS 'Campo monto original de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.monto_original IS 'Monto Original';
LABEL ON COLUMN BAPRC.monto_original TEXT IS 'Campo monto original de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.saldo_pendiente IS 'Campo saldo pendiente de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN BAPRC.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.fecha_emision IS 'Campo fecha emision de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN BAPRC.fecha_emision TEXT IS 'Campo fecha emision de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN BAPRC.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.estado_cxp IS 'Campo estado cxp de la tabla BAPRC.';
LABEL ON COLUMN BAPRC.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN BAPRC.estado_cxp TEXT IS 'Campo estado cxp de la tabla BAPRC.';
COMMENT ON COLUMN BAPRC.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BAPRC.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BAPRC.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BAPRC.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BAPRC.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BAPRC.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BAPRC.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BAPRC.version_registro IS 'Version Registro';
LABEL ON COLUMN BAPRC.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BAPRC.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BAPRC.observaciones IS 'Observaciones';
LABEL ON COLUMN BAPRC.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BAPRC.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BAPRC.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BAPRC.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BAPRC.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BAPRC.created_at IS 'Created At';
LABEL ON COLUMN BAPRC.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BAPRC.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BAPRC.updated_at IS 'Updated At';
LABEL ON COLUMN BAPRC.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_baprc_created_at ON BAPRC (created_at);

-- TABLA: BAMOR
-- ============================================================================
-- Nombre de la Tabla: BAMOR
-- DESCRIPCIÓN: Tabla de datos para BAMOR en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BAMOR (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_sucursal VARCHAR(20) NOT NULL FOR COLUMN CODSUC,
    origen_cuenta VARCHAR(20) NOT NULL FOR COLUMN ORICUE,
    tipo_cuenta VARCHAR(20) NOT NULL FOR COLUMN TIPOCUENTA,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_bamor_pk PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
) RCDFMT BAMOR;
COMMENT ON TABLE BAMOR IS 'Tabla de datos para BAMOR en el módulo bancario.';
LABEL ON TABLE BAMOR IS 'BAMOR';

COMMENT ON COLUMN BAMOR.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN BAMOR.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN BAMOR.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN BAMOR.codigo_sucursal IS 'Código de la sucursal bancaria.';
LABEL ON COLUMN BAMOR.codigo_sucursal IS 'Codigo Sucursal';
LABEL ON COLUMN BAMOR.codigo_sucursal TEXT IS 'Código de la sucursal bancaria.';
COMMENT ON COLUMN BAMOR.origen_cuenta IS 'Campo origen cuenta de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.origen_cuenta IS 'Origen Cuenta';
LABEL ON COLUMN BAMOR.origen_cuenta TEXT IS 'Campo origen cuenta de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.tipo_cuenta IS 'Campo tipo cuenta de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.tipo_cuenta IS 'Tipo Cuenta';
LABEL ON COLUMN BAMOR.tipo_cuenta TEXT IS 'Campo tipo cuenta de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN BAMOR.id_cliente IS 'Id Cliente';
LABEL ON COLUMN BAMOR.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN BAMOR.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN BAMOR.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN BAMOR.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN BAMOR.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN BAMOR.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN BAMOR.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN BAMOR.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN BAMOR.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN BAMOR.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN BAMOR.razon_social IS 'Campo razon social de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.razon_social IS 'Razon Social';
LABEL ON COLUMN BAMOR.razon_social TEXT IS 'Campo razon social de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.email IS 'Campo email de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.email IS 'Email';
LABEL ON COLUMN BAMOR.email TEXT IS 'Campo email de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.telefono IS 'Campo telefono de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.telefono IS 'Telefono';
LABEL ON COLUMN BAMOR.telefono TEXT IS 'Campo telefono de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.monto_original IS 'Campo monto original de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.monto_original IS 'Monto Original';
LABEL ON COLUMN BAMOR.monto_original TEXT IS 'Campo monto original de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.saldo_pendiente IS 'Campo saldo pendiente de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN BAMOR.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.fecha_emision IS 'Campo fecha emision de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN BAMOR.fecha_emision TEXT IS 'Campo fecha emision de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN BAMOR.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.estado_cxp IS 'Campo estado cxp de la tabla BAMOR.';
LABEL ON COLUMN BAMOR.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN BAMOR.estado_cxp TEXT IS 'Campo estado cxp de la tabla BAMOR.';
COMMENT ON COLUMN BAMOR.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BAMOR.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BAMOR.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BAMOR.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BAMOR.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BAMOR.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BAMOR.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BAMOR.version_registro IS 'Version Registro';
LABEL ON COLUMN BAMOR.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BAMOR.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BAMOR.observaciones IS 'Observaciones';
LABEL ON COLUMN BAMOR.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BAMOR.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BAMOR.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BAMOR.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BAMOR.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BAMOR.created_at IS 'Created At';
LABEL ON COLUMN BAMOR.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BAMOR.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BAMOR.updated_at IS 'Updated At';
LABEL ON COLUMN BAMOR.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_bamor_created_at ON BAMOR (created_at);

-- TABLA: BAINP
-- ============================================================================
-- Nombre de la Tabla: BAINP
-- DESCRIPCIÓN: Tabla de datos para BAINP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BAINP (
    numero_batch VARCHAR(30) NOT NULL FOR COLUMN NUMBAT,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_bainp_pk PRIMARY KEY (numero_batch, secuencia)
) RCDFMT BAINP;
COMMENT ON TABLE BAINP IS 'Tabla de datos para BAINP en el módulo bancario.';
LABEL ON TABLE BAINP IS 'BAINP';

COMMENT ON COLUMN BAINP.numero_batch IS 'Número del batch.';
LABEL ON COLUMN BAINP.numero_batch IS 'Numero Batch';
LABEL ON COLUMN BAINP.numero_batch TEXT IS 'Número del batch.';
COMMENT ON COLUMN BAINP.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN BAINP.secuencia IS 'Secuencia';
LABEL ON COLUMN BAINP.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN BAINP.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN BAINP.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN BAINP.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN BAINP.razon_social IS 'Campo razon social de la tabla BAINP.';
LABEL ON COLUMN BAINP.razon_social IS 'Razon Social';
LABEL ON COLUMN BAINP.razon_social TEXT IS 'Campo razon social de la tabla BAINP.';
COMMENT ON COLUMN BAINP.email IS 'Campo email de la tabla BAINP.';
LABEL ON COLUMN BAINP.email IS 'Email';
LABEL ON COLUMN BAINP.email TEXT IS 'Campo email de la tabla BAINP.';
COMMENT ON COLUMN BAINP.telefono IS 'Campo telefono de la tabla BAINP.';
LABEL ON COLUMN BAINP.telefono IS 'Telefono';
LABEL ON COLUMN BAINP.telefono TEXT IS 'Campo telefono de la tabla BAINP.';
COMMENT ON COLUMN BAINP.monto_original IS 'Campo monto original de la tabla BAINP.';
LABEL ON COLUMN BAINP.monto_original IS 'Monto Original';
LABEL ON COLUMN BAINP.monto_original TEXT IS 'Campo monto original de la tabla BAINP.';
COMMENT ON COLUMN BAINP.saldo_pendiente IS 'Campo saldo pendiente de la tabla BAINP.';
LABEL ON COLUMN BAINP.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN BAINP.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla BAINP.';
COMMENT ON COLUMN BAINP.fecha_emision IS 'Campo fecha emision de la tabla BAINP.';
LABEL ON COLUMN BAINP.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN BAINP.fecha_emision TEXT IS 'Campo fecha emision de la tabla BAINP.';
COMMENT ON COLUMN BAINP.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla BAINP.';
LABEL ON COLUMN BAINP.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN BAINP.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla BAINP.';
COMMENT ON COLUMN BAINP.estado_cxp IS 'Campo estado cxp de la tabla BAINP.';
LABEL ON COLUMN BAINP.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN BAINP.estado_cxp TEXT IS 'Campo estado cxp de la tabla BAINP.';
COMMENT ON COLUMN BAINP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BAINP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BAINP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BAINP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BAINP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BAINP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BAINP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BAINP.version_registro IS 'Version Registro';
LABEL ON COLUMN BAINP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BAINP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BAINP.observaciones IS 'Observaciones';
LABEL ON COLUMN BAINP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BAINP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BAINP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BAINP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BAINP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BAINP.created_at IS 'Created At';
LABEL ON COLUMN BAINP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BAINP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BAINP.updated_at IS 'Updated At';
LABEL ON COLUMN BAINP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_bainp_created_at ON BAINP (created_at);

-- TABLA: BAHIS
-- ============================================================================
-- Nombre de la Tabla: BAHIS
-- DESCRIPCIÓN: Tabla de datos para BAHIS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE BAHIS (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    origen_cuenta VARCHAR(20) NOT NULL FOR COLUMN ORICUE,
    tipo_cuenta VARCHAR(20) NOT NULL FOR COLUMN TIPOCUENTA,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    fecha DATE NOT NULL FOR COLUMN FECHA,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_bahis_pk PRIMARY KEY (codigo_banco, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, fecha)
) RCDFMT BAHIS;
COMMENT ON TABLE BAHIS IS 'Tabla de datos para BAHIS en el módulo bancario.';
LABEL ON TABLE BAHIS IS 'BAHIS';

COMMENT ON COLUMN BAHIS.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN BAHIS.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN BAHIS.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN BAHIS.origen_cuenta IS 'Campo origen cuenta de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.origen_cuenta IS 'Origen Cuenta';
LABEL ON COLUMN BAHIS.origen_cuenta TEXT IS 'Campo origen cuenta de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.tipo_cuenta IS 'Campo tipo cuenta de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.tipo_cuenta IS 'Tipo Cuenta';
LABEL ON COLUMN BAHIS.tipo_cuenta TEXT IS 'Campo tipo cuenta de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN BAHIS.id_cliente IS 'Id Cliente';
LABEL ON COLUMN BAHIS.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN BAHIS.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN BAHIS.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN BAHIS.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN BAHIS.fecha IS 'Fecha asociada al registro.';
LABEL ON COLUMN BAHIS.fecha IS 'Fecha';
LABEL ON COLUMN BAHIS.fecha TEXT IS 'Fecha asociada al registro.';
COMMENT ON COLUMN BAHIS.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN BAHIS.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN BAHIS.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN BAHIS.razon_social IS 'Campo razon social de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.razon_social IS 'Razon Social';
LABEL ON COLUMN BAHIS.razon_social TEXT IS 'Campo razon social de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.email IS 'Campo email de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.email IS 'Email';
LABEL ON COLUMN BAHIS.email TEXT IS 'Campo email de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.telefono IS 'Campo telefono de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.telefono IS 'Telefono';
LABEL ON COLUMN BAHIS.telefono TEXT IS 'Campo telefono de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.monto_original IS 'Campo monto original de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.monto_original IS 'Monto Original';
LABEL ON COLUMN BAHIS.monto_original TEXT IS 'Campo monto original de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.saldo_pendiente IS 'Campo saldo pendiente de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN BAHIS.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.fecha_emision IS 'Campo fecha emision de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN BAHIS.fecha_emision TEXT IS 'Campo fecha emision de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN BAHIS.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.estado_cxp IS 'Campo estado cxp de la tabla BAHIS.';
LABEL ON COLUMN BAHIS.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN BAHIS.estado_cxp TEXT IS 'Campo estado cxp de la tabla BAHIS.';
COMMENT ON COLUMN BAHIS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN BAHIS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN BAHIS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN BAHIS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN BAHIS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN BAHIS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN BAHIS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN BAHIS.version_registro IS 'Version Registro';
LABEL ON COLUMN BAHIS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN BAHIS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN BAHIS.observaciones IS 'Observaciones';
LABEL ON COLUMN BAHIS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN BAHIS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN BAHIS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN BAHIS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN BAHIS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN BAHIS.created_at IS 'Created At';
LABEL ON COLUMN BAHIS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN BAHIS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN BAHIS.updated_at IS 'Updated At';
LABEL ON COLUMN BAHIS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_bahis_fecha ON BAHIS (fecha);
CREATE INDEX idx_bahis_created_at ON BAHIS (created_at);

-- TABLA: CNTRLBAF
-- ============================================================================
-- Nombre de la Tabla: CNTRLBAF
-- DESCRIPCIÓN: Tabla de datos para CNTRLBAF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLBAF (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlbaf_pk PRIMARY KEY (codigo_banco, codigo_moneda)
) RCDFMT CNTRLBAF;
COMMENT ON TABLE CNTRLBAF IS 'Tabla de datos para CNTRLBAF en el módulo bancario.';
LABEL ON TABLE CNTRLBAF IS 'CNTRLBAF';

COMMENT ON COLUMN CNTRLBAF.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLBAF.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLBAF.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLBAF.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN CNTRLBAF.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN CNTRLBAF.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN CNTRLBAF.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CNTRLBAF.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CNTRLBAF.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CNTRLBAF.razon_social IS 'Campo razon social de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.razon_social IS 'Razon Social';
LABEL ON COLUMN CNTRLBAF.razon_social TEXT IS 'Campo razon social de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.email IS 'Campo email de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.email IS 'Email';
LABEL ON COLUMN CNTRLBAF.email TEXT IS 'Campo email de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.telefono IS 'Campo telefono de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.telefono IS 'Telefono';
LABEL ON COLUMN CNTRLBAF.telefono TEXT IS 'Campo telefono de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.monto_original IS 'Campo monto original de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLBAF.monto_original TEXT IS 'Campo monto original de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.saldo_pendiente IS 'Campo saldo pendiente de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN CNTRLBAF.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.fecha_emision IS 'Campo fecha emision de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN CNTRLBAF.fecha_emision TEXT IS 'Campo fecha emision de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLBAF.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.estado_cxp IS 'Campo estado cxp de la tabla CNTRLBAF.';
LABEL ON COLUMN CNTRLBAF.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN CNTRLBAF.estado_cxp TEXT IS 'Campo estado cxp de la tabla CNTRLBAF.';
COMMENT ON COLUMN CNTRLBAF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLBAF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLBAF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLBAF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLBAF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLBAF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLBAF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLBAF.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLBAF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLBAF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLBAF.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLBAF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLBAF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLBAF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLBAF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLBAF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLBAF.created_at IS 'Created At';
LABEL ON COLUMN CNTRLBAF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLBAF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLBAF.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLBAF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlbaf_created_at ON CNTRLBAF (created_at);

-- TABLA: CNTRLBAP
-- ============================================================================
-- Nombre de la Tabla: CNTRLBAP
-- DESCRIPCIÓN: Tabla de datos para CNTRLBAP en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLBAP (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    numero_identificacion VARCHAR(30) FOR COLUMN NUMIDE,
    razon_social VARCHAR(80) FOR COLUMN RAZSOC,
    email VARCHAR(80) FOR COLUMN EMAIL,
    telefono VARCHAR(80) FOR COLUMN TELEFONO,
    monto_original DECIMAL(18,2) FOR COLUMN MONORI,
    saldo_pendiente DECIMAL(18,2) FOR COLUMN SALPEN,
    fecha_emision DATE FOR COLUMN FECEMI,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    estado_cxp VARCHAR(20) FOR COLUMN ESTADOCXP,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlbap_pk PRIMARY KEY (codigo_banco, codigo_moneda)
) RCDFMT CNTRLBAP;
COMMENT ON TABLE CNTRLBAP IS 'Tabla de datos para CNTRLBAP en el módulo bancario.';
LABEL ON TABLE CNTRLBAP IS 'CNTRLBAP';

COMMENT ON COLUMN CNTRLBAP.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLBAP.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLBAP.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLBAP.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN CNTRLBAP.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN CNTRLBAP.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN CNTRLBAP.numero_identificacion IS 'Número del identificacion.';
LABEL ON COLUMN CNTRLBAP.numero_identificacion IS 'Numero Identificacion';
LABEL ON COLUMN CNTRLBAP.numero_identificacion TEXT IS 'Número del identificacion.';
COMMENT ON COLUMN CNTRLBAP.razon_social IS 'Campo razon social de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.razon_social IS 'Razon Social';
LABEL ON COLUMN CNTRLBAP.razon_social TEXT IS 'Campo razon social de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.email IS 'Campo email de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.email IS 'Email';
LABEL ON COLUMN CNTRLBAP.email TEXT IS 'Campo email de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.telefono IS 'Campo telefono de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.telefono IS 'Telefono';
LABEL ON COLUMN CNTRLBAP.telefono TEXT IS 'Campo telefono de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.monto_original IS 'Campo monto original de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.monto_original IS 'Monto Original';
LABEL ON COLUMN CNTRLBAP.monto_original TEXT IS 'Campo monto original de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.saldo_pendiente IS 'Campo saldo pendiente de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.saldo_pendiente IS 'Saldo Pendiente';
LABEL ON COLUMN CNTRLBAP.saldo_pendiente TEXT IS 'Campo saldo pendiente de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.fecha_emision IS 'Campo fecha emision de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.fecha_emision IS 'Fecha Emision';
LABEL ON COLUMN CNTRLBAP.fecha_emision TEXT IS 'Campo fecha emision de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN CNTRLBAP.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.estado_cxp IS 'Campo estado cxp de la tabla CNTRLBAP.';
LABEL ON COLUMN CNTRLBAP.estado_cxp IS 'Estado Cxp';
LABEL ON COLUMN CNTRLBAP.estado_cxp TEXT IS 'Campo estado cxp de la tabla CNTRLBAP.';
COMMENT ON COLUMN CNTRLBAP.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLBAP.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLBAP.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLBAP.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLBAP.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLBAP.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLBAP.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLBAP.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLBAP.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLBAP.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLBAP.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLBAP.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLBAP.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLBAP.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLBAP.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLBAP.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLBAP.created_at IS 'Created At';
LABEL ON COLUMN CNTRLBAP.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLBAP.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLBAP.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLBAP.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlbap_created_at ON CNTRLBAP (created_at);

-- ============================================================================
-- MODULO 12: PAGOS Y TRANSFERENCIAS (6 tablas)
-- ============================================================================

-- TABLA: FIWRT
-- ============================================================================
-- Nombre de la Tabla: FIWRT
-- DESCRIPCIÓN: Tabla de datos para FIWRT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE FIWRT (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    numero_transferencia VARCHAR(30) NOT NULL FOR COLUMN NUMTRA,
    fecha_operacion DATE FOR COLUMN FECOPE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_fiwrt_pk PRIMARY KEY (codigo_banco, numero_transferencia)
) RCDFMT FIWRT;
COMMENT ON TABLE FIWRT IS 'Tabla de datos para FIWRT en el módulo bancario.';
LABEL ON TABLE FIWRT IS 'FIWRT';

COMMENT ON COLUMN FIWRT.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN FIWRT.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN FIWRT.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN FIWRT.numero_transferencia IS 'Número del transferencia.';
LABEL ON COLUMN FIWRT.numero_transferencia IS 'Numero Transferencia';
LABEL ON COLUMN FIWRT.numero_transferencia TEXT IS 'Número del transferencia.';
COMMENT ON COLUMN FIWRT.fecha_operacion IS 'Campo fecha operacion de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN FIWRT.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.monto IS 'Campo monto de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.monto IS 'Monto';
LABEL ON COLUMN FIWRT.monto TEXT IS 'Campo monto de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.beneficiario IS 'Campo beneficiario de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.beneficiario IS 'Beneficiario';
LABEL ON COLUMN FIWRT.beneficiario TEXT IS 'Campo beneficiario de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.banco_destino IS 'Campo banco destino de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.banco_destino IS 'Banco Destino';
LABEL ON COLUMN FIWRT.banco_destino TEXT IS 'Campo banco destino de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.canal_pago IS 'Campo canal pago de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.canal_pago IS 'Canal Pago';
LABEL ON COLUMN FIWRT.canal_pago TEXT IS 'Campo canal pago de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.estado_pago IS 'Campo estado pago de la tabla FIWRT.';
LABEL ON COLUMN FIWRT.estado_pago IS 'Estado Pago';
LABEL ON COLUMN FIWRT.estado_pago TEXT IS 'Campo estado pago de la tabla FIWRT.';
COMMENT ON COLUMN FIWRT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN FIWRT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN FIWRT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN FIWRT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN FIWRT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN FIWRT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN FIWRT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN FIWRT.version_registro IS 'Version Registro';
LABEL ON COLUMN FIWRT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN FIWRT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN FIWRT.observaciones IS 'Observaciones';
LABEL ON COLUMN FIWRT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN FIWRT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN FIWRT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN FIWRT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN FIWRT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN FIWRT.created_at IS 'Created At';
LABEL ON COLUMN FIWRT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN FIWRT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN FIWRT.updated_at IS 'Updated At';
LABEL ON COLUMN FIWRT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_fiwrt_created_at ON FIWRT (created_at);

-- TABLA: POFED
-- ============================================================================
-- Nombre de la Tabla: POFED
-- DESCRIPCIÓN: Tabla de datos para POFED en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE POFED (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    fecha_operacion DATE FOR COLUMN FECOPE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_pofed_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
) RCDFMT POFED;
COMMENT ON TABLE POFED IS 'Tabla de datos para POFED en el módulo bancario.';
LABEL ON TABLE POFED IS 'POFED';

COMMENT ON COLUMN POFED.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN POFED.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN POFED.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN POFED.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN POFED.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN POFED.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN POFED.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN POFED.id_cliente IS 'Id Cliente';
LABEL ON COLUMN POFED.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN POFED.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN POFED.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN POFED.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN POFED.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN POFED.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN POFED.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN POFED.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN POFED.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN POFED.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN POFED.fecha_operacion IS 'Campo fecha operacion de la tabla POFED.';
LABEL ON COLUMN POFED.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN POFED.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla POFED.';
COMMENT ON COLUMN POFED.monto IS 'Campo monto de la tabla POFED.';
LABEL ON COLUMN POFED.monto IS 'Monto';
LABEL ON COLUMN POFED.monto TEXT IS 'Campo monto de la tabla POFED.';
COMMENT ON COLUMN POFED.beneficiario IS 'Campo beneficiario de la tabla POFED.';
LABEL ON COLUMN POFED.beneficiario IS 'Beneficiario';
LABEL ON COLUMN POFED.beneficiario TEXT IS 'Campo beneficiario de la tabla POFED.';
COMMENT ON COLUMN POFED.banco_destino IS 'Campo banco destino de la tabla POFED.';
LABEL ON COLUMN POFED.banco_destino IS 'Banco Destino';
LABEL ON COLUMN POFED.banco_destino TEXT IS 'Campo banco destino de la tabla POFED.';
COMMENT ON COLUMN POFED.canal_pago IS 'Campo canal pago de la tabla POFED.';
LABEL ON COLUMN POFED.canal_pago IS 'Canal Pago';
LABEL ON COLUMN POFED.canal_pago TEXT IS 'Campo canal pago de la tabla POFED.';
COMMENT ON COLUMN POFED.estado_pago IS 'Campo estado pago de la tabla POFED.';
LABEL ON COLUMN POFED.estado_pago IS 'Estado Pago';
LABEL ON COLUMN POFED.estado_pago TEXT IS 'Campo estado pago de la tabla POFED.';
COMMENT ON COLUMN POFED.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN POFED.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN POFED.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN POFED.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN POFED.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN POFED.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN POFED.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN POFED.version_registro IS 'Version Registro';
LABEL ON COLUMN POFED.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN POFED.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN POFED.observaciones IS 'Observaciones';
LABEL ON COLUMN POFED.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN POFED.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN POFED.estado_registro IS 'Estado Registro';
LABEL ON COLUMN POFED.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN POFED.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN POFED.created_at IS 'Created At';
LABEL ON COLUMN POFED.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN POFED.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN POFED.updated_at IS 'Updated At';
LABEL ON COLUMN POFED.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_pofed_created_at ON POFED (created_at);

-- TABLA: POSWF
-- ============================================================================
-- Nombre de la Tabla: POSWF
-- DESCRIPCIÓN: Tabla de datos para POSWF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE POSWF (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    monto DECIMAL(18,2) NOT NULL FOR COLUMN MONTO,
    fecha_operacion DATE FOR COLUMN FECOPE,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_poswf_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia, monto)
) RCDFMT POSWF;
COMMENT ON TABLE POSWF IS 'Tabla de datos para POSWF en el módulo bancario.';
LABEL ON TABLE POSWF IS 'POSWF';

COMMENT ON COLUMN POSWF.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN POSWF.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN POSWF.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN POSWF.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN POSWF.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN POSWF.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN POSWF.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN POSWF.id_cliente IS 'Id Cliente';
LABEL ON COLUMN POSWF.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN POSWF.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN POSWF.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN POSWF.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN POSWF.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN POSWF.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN POSWF.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN POSWF.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN POSWF.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN POSWF.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN POSWF.monto IS 'Campo monto de la tabla POSWF.';
LABEL ON COLUMN POSWF.monto IS 'Monto';
LABEL ON COLUMN POSWF.monto TEXT IS 'Campo monto de la tabla POSWF.';
COMMENT ON COLUMN POSWF.fecha_operacion IS 'Campo fecha operacion de la tabla POSWF.';
LABEL ON COLUMN POSWF.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN POSWF.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla POSWF.';
COMMENT ON COLUMN POSWF.beneficiario IS 'Campo beneficiario de la tabla POSWF.';
LABEL ON COLUMN POSWF.beneficiario IS 'Beneficiario';
LABEL ON COLUMN POSWF.beneficiario TEXT IS 'Campo beneficiario de la tabla POSWF.';
COMMENT ON COLUMN POSWF.banco_destino IS 'Campo banco destino de la tabla POSWF.';
LABEL ON COLUMN POSWF.banco_destino IS 'Banco Destino';
LABEL ON COLUMN POSWF.banco_destino TEXT IS 'Campo banco destino de la tabla POSWF.';
COMMENT ON COLUMN POSWF.canal_pago IS 'Campo canal pago de la tabla POSWF.';
LABEL ON COLUMN POSWF.canal_pago IS 'Canal Pago';
LABEL ON COLUMN POSWF.canal_pago TEXT IS 'Campo canal pago de la tabla POSWF.';
COMMENT ON COLUMN POSWF.estado_pago IS 'Campo estado pago de la tabla POSWF.';
LABEL ON COLUMN POSWF.estado_pago IS 'Estado Pago';
LABEL ON COLUMN POSWF.estado_pago TEXT IS 'Campo estado pago de la tabla POSWF.';
COMMENT ON COLUMN POSWF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN POSWF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN POSWF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN POSWF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN POSWF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN POSWF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN POSWF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN POSWF.version_registro IS 'Version Registro';
LABEL ON COLUMN POSWF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN POSWF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN POSWF.observaciones IS 'Observaciones';
LABEL ON COLUMN POSWF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN POSWF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN POSWF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN POSWF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN POSWF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN POSWF.created_at IS 'Created At';
LABEL ON COLUMN POSWF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN POSWF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN POSWF.updated_at IS 'Updated At';
LABEL ON COLUMN POSWF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_poswf_created_at ON POSWF (created_at);

-- TABLA: POTLX
-- ============================================================================
-- Nombre de la Tabla: POTLX
-- DESCRIPCIÓN: Tabla de datos para POTLX en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE POTLX (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    codigo_moneda VARCHAR(20) NOT NULL FOR COLUMN CODMON,
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    numero_cuenta VARCHAR(24) NOT NULL FOR COLUMN NUMCUE,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    fecha_operacion DATE FOR COLUMN FECOPE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_potlx_pk PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
) RCDFMT POTLX;
COMMENT ON TABLE POTLX IS 'Tabla de datos para POTLX en el módulo bancario.';
LABEL ON TABLE POTLX IS 'POTLX';

COMMENT ON COLUMN POTLX.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN POTLX.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN POTLX.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN POTLX.codigo_moneda IS 'Código de moneda.';
LABEL ON COLUMN POTLX.codigo_moneda IS 'Codigo Moneda';
LABEL ON COLUMN POTLX.codigo_moneda TEXT IS 'Código de moneda.';
COMMENT ON COLUMN POTLX.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN POTLX.id_cliente IS 'Id Cliente';
LABEL ON COLUMN POTLX.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN POTLX.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN POTLX.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN POTLX.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN POTLX.numero_cuenta IS 'Número de cuenta bancaria.';
LABEL ON COLUMN POTLX.numero_cuenta IS 'Numero Cuenta';
LABEL ON COLUMN POTLX.numero_cuenta TEXT IS 'Número de cuenta bancaria.';
COMMENT ON COLUMN POTLX.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN POTLX.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN POTLX.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN POTLX.fecha_operacion IS 'Campo fecha operacion de la tabla POTLX.';
LABEL ON COLUMN POTLX.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN POTLX.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla POTLX.';
COMMENT ON COLUMN POTLX.monto IS 'Campo monto de la tabla POTLX.';
LABEL ON COLUMN POTLX.monto IS 'Monto';
LABEL ON COLUMN POTLX.monto TEXT IS 'Campo monto de la tabla POTLX.';
COMMENT ON COLUMN POTLX.beneficiario IS 'Campo beneficiario de la tabla POTLX.';
LABEL ON COLUMN POTLX.beneficiario IS 'Beneficiario';
LABEL ON COLUMN POTLX.beneficiario TEXT IS 'Campo beneficiario de la tabla POTLX.';
COMMENT ON COLUMN POTLX.banco_destino IS 'Campo banco destino de la tabla POTLX.';
LABEL ON COLUMN POTLX.banco_destino IS 'Banco Destino';
LABEL ON COLUMN POTLX.banco_destino TEXT IS 'Campo banco destino de la tabla POTLX.';
COMMENT ON COLUMN POTLX.canal_pago IS 'Campo canal pago de la tabla POTLX.';
LABEL ON COLUMN POTLX.canal_pago IS 'Canal Pago';
LABEL ON COLUMN POTLX.canal_pago TEXT IS 'Campo canal pago de la tabla POTLX.';
COMMENT ON COLUMN POTLX.estado_pago IS 'Campo estado pago de la tabla POTLX.';
LABEL ON COLUMN POTLX.estado_pago IS 'Estado Pago';
LABEL ON COLUMN POTLX.estado_pago TEXT IS 'Campo estado pago de la tabla POTLX.';
COMMENT ON COLUMN POTLX.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN POTLX.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN POTLX.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN POTLX.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN POTLX.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN POTLX.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN POTLX.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN POTLX.version_registro IS 'Version Registro';
LABEL ON COLUMN POTLX.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN POTLX.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN POTLX.observaciones IS 'Observaciones';
LABEL ON COLUMN POTLX.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN POTLX.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN POTLX.estado_registro IS 'Estado Registro';
LABEL ON COLUMN POTLX.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN POTLX.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN POTLX.created_at IS 'Created At';
LABEL ON COLUMN POTLX.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN POTLX.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN POTLX.updated_at IS 'Updated At';
LABEL ON COLUMN POTLX.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_potlx_created_at ON POTLX (created_at);

-- TABLA: SWITF
-- ============================================================================
-- Nombre de la Tabla: SWITF
-- DESCRIPCIÓN: Tabla de datos para SWITF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE SWITF (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    numero_referencia VARCHAR(30) NOT NULL FOR COLUMN NUMREF,
    formato_swift VARCHAR(50) NOT NULL FOR COLUMN FORSWI,
    fecha_operacion DATE FOR COLUMN FECOPE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_switf_pk PRIMARY KEY (codigo_banco, numero_referencia, formato_swift)
) RCDFMT SWITF;
COMMENT ON TABLE SWITF IS 'Tabla de datos para SWITF en el módulo bancario.';
LABEL ON TABLE SWITF IS 'SWITF';

COMMENT ON COLUMN SWITF.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN SWITF.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN SWITF.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN SWITF.numero_referencia IS 'Número del referencia.';
LABEL ON COLUMN SWITF.numero_referencia IS 'Numero Referencia';
LABEL ON COLUMN SWITF.numero_referencia TEXT IS 'Número del referencia.';
COMMENT ON COLUMN SWITF.formato_swift IS 'Campo formato swift de la tabla SWITF.';
LABEL ON COLUMN SWITF.formato_swift IS 'Formato Swift';
LABEL ON COLUMN SWITF.formato_swift TEXT IS 'Campo formato swift de la tabla SWITF.';
COMMENT ON COLUMN SWITF.fecha_operacion IS 'Campo fecha operacion de la tabla SWITF.';
LABEL ON COLUMN SWITF.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN SWITF.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla SWITF.';
COMMENT ON COLUMN SWITF.monto IS 'Campo monto de la tabla SWITF.';
LABEL ON COLUMN SWITF.monto IS 'Monto';
LABEL ON COLUMN SWITF.monto TEXT IS 'Campo monto de la tabla SWITF.';
COMMENT ON COLUMN SWITF.beneficiario IS 'Campo beneficiario de la tabla SWITF.';
LABEL ON COLUMN SWITF.beneficiario IS 'Beneficiario';
LABEL ON COLUMN SWITF.beneficiario TEXT IS 'Campo beneficiario de la tabla SWITF.';
COMMENT ON COLUMN SWITF.banco_destino IS 'Campo banco destino de la tabla SWITF.';
LABEL ON COLUMN SWITF.banco_destino IS 'Banco Destino';
LABEL ON COLUMN SWITF.banco_destino TEXT IS 'Campo banco destino de la tabla SWITF.';
COMMENT ON COLUMN SWITF.canal_pago IS 'Campo canal pago de la tabla SWITF.';
LABEL ON COLUMN SWITF.canal_pago IS 'Canal Pago';
LABEL ON COLUMN SWITF.canal_pago TEXT IS 'Campo canal pago de la tabla SWITF.';
COMMENT ON COLUMN SWITF.estado_pago IS 'Campo estado pago de la tabla SWITF.';
LABEL ON COLUMN SWITF.estado_pago IS 'Estado Pago';
LABEL ON COLUMN SWITF.estado_pago TEXT IS 'Campo estado pago de la tabla SWITF.';
COMMENT ON COLUMN SWITF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN SWITF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN SWITF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN SWITF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN SWITF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN SWITF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN SWITF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN SWITF.version_registro IS 'Version Registro';
LABEL ON COLUMN SWITF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN SWITF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN SWITF.observaciones IS 'Observaciones';
LABEL ON COLUMN SWITF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN SWITF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN SWITF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN SWITF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN SWITF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN SWITF.created_at IS 'Created At';
LABEL ON COLUMN SWITF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN SWITF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN SWITF.updated_at IS 'Updated At';
LABEL ON COLUMN SWITF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_switf_created_at ON SWITF (created_at);

-- TABLA: CNTRLPRF
-- ============================================================================
-- Nombre de la Tabla: CNTRLPRF
-- DESCRIPCIÓN: Tabla de datos para CNTRLPRF en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE CNTRLPRF (
    codigo_banco VARCHAR(20) NOT NULL FOR COLUMN CODBAN,
    parametro VARCHAR(20) NOT NULL FOR COLUMN PARAMETRO,
    codigo_tabla VARCHAR(20) NOT NULL FOR COLUMN CODTAB,
    fecha_operacion DATE FOR COLUMN FECOPE,
    monto DECIMAL(18,2) FOR COLUMN MONTO,
    beneficiario VARCHAR(80) FOR COLUMN BEN,
    banco_destino VARCHAR(80) FOR COLUMN BANDES,
    canal_pago VARCHAR(20) FOR COLUMN CANALPAGO,
    estado_pago VARCHAR(20) FOR COLUMN ESTADOPAGO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_cntrlprf_pk PRIMARY KEY (codigo_banco, parametro, codigo_tabla)
) RCDFMT CNTRLPRF;
COMMENT ON TABLE CNTRLPRF IS 'Tabla de datos para CNTRLPRF en el módulo bancario.';
LABEL ON TABLE CNTRLPRF IS 'CNTRLPRF';

COMMENT ON COLUMN CNTRLPRF.codigo_banco IS 'Código identificador del banco.';
LABEL ON COLUMN CNTRLPRF.codigo_banco IS 'Codigo Banco';
LABEL ON COLUMN CNTRLPRF.codigo_banco TEXT IS 'Código identificador del banco.';
COMMENT ON COLUMN CNTRLPRF.parametro IS 'Campo parametro de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.parametro IS 'Parametro';
LABEL ON COLUMN CNTRLPRF.parametro TEXT IS 'Campo parametro de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.codigo_tabla IS 'Código identificador de la tabla.';
LABEL ON COLUMN CNTRLPRF.codigo_tabla IS 'Codigo Tabla';
LABEL ON COLUMN CNTRLPRF.codigo_tabla TEXT IS 'Código identificador de la tabla.';
COMMENT ON COLUMN CNTRLPRF.fecha_operacion IS 'Campo fecha operacion de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.fecha_operacion IS 'Fecha Operacion';
LABEL ON COLUMN CNTRLPRF.fecha_operacion TEXT IS 'Campo fecha operacion de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.monto IS 'Campo monto de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.monto IS 'Monto';
LABEL ON COLUMN CNTRLPRF.monto TEXT IS 'Campo monto de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.beneficiario IS 'Campo beneficiario de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.beneficiario IS 'Beneficiario';
LABEL ON COLUMN CNTRLPRF.beneficiario TEXT IS 'Campo beneficiario de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.banco_destino IS 'Campo banco destino de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.banco_destino IS 'Banco Destino';
LABEL ON COLUMN CNTRLPRF.banco_destino TEXT IS 'Campo banco destino de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.canal_pago IS 'Campo canal pago de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.canal_pago IS 'Canal Pago';
LABEL ON COLUMN CNTRLPRF.canal_pago TEXT IS 'Campo canal pago de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.estado_pago IS 'Campo estado pago de la tabla CNTRLPRF.';
LABEL ON COLUMN CNTRLPRF.estado_pago IS 'Estado Pago';
LABEL ON COLUMN CNTRLPRF.estado_pago TEXT IS 'Campo estado pago de la tabla CNTRLPRF.';
COMMENT ON COLUMN CNTRLPRF.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN CNTRLPRF.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN CNTRLPRF.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN CNTRLPRF.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN CNTRLPRF.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN CNTRLPRF.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN CNTRLPRF.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN CNTRLPRF.version_registro IS 'Version Registro';
LABEL ON COLUMN CNTRLPRF.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN CNTRLPRF.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN CNTRLPRF.observaciones IS 'Observaciones';
LABEL ON COLUMN CNTRLPRF.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN CNTRLPRF.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN CNTRLPRF.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNTRLPRF.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN CNTRLPRF.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN CNTRLPRF.created_at IS 'Created At';
LABEL ON COLUMN CNTRLPRF.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN CNTRLPRF.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN CNTRLPRF.updated_at IS 'Updated At';
LABEL ON COLUMN CNTRLPRF.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_cntrlprf_created_at ON CNTRLPRF (created_at);

-- ============================================================================
-- MODULO 13: PROPUESTA DE CRÉDITO (9 tablas)
-- ============================================================================

-- TABLA: PLPCR
-- ============================================================================
-- Nombre de la Tabla: PLPCR
-- DESCRIPCIÓN: Tabla de datos para PLPCR en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PLPCR (
    numero_propuesta VARCHAR(30) NOT NULL FOR COLUMN NUMPRO,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_plpcr_pk PRIMARY KEY (numero_propuesta)
) RCDFMT PLPCR;
COMMENT ON TABLE PLPCR IS 'Tabla de datos para PLPCR en el módulo bancario.';
LABEL ON TABLE PLPCR IS 'PLPCR';

COMMENT ON COLUMN PLPCR.numero_propuesta IS 'Número del propuesta.';
LABEL ON COLUMN PLPCR.numero_propuesta IS 'Numero Propuesta';
LABEL ON COLUMN PLPCR.numero_propuesta TEXT IS 'Número del propuesta.';
COMMENT ON COLUMN PLPCR.fecha_propuesta IS 'Campo fecha propuesta de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN PLPCR.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.monto_solicitado IS 'Campo monto solicitado de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN PLPCR.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.plazo_meses IS 'Campo plazo meses de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN PLPCR.plazo_meses TEXT IS 'Campo plazo meses de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.tasa_propuesta IS 'Campo tasa propuesta de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN PLPCR.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.dictamen_credito IS 'Campo dictamen credito de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN PLPCR.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.estado_propuesta IS 'Campo estado propuesta de la tabla PLPCR.';
LABEL ON COLUMN PLPCR.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN PLPCR.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla PLPCR.';
COMMENT ON COLUMN PLPCR.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PLPCR.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PLPCR.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PLPCR.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PLPCR.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PLPCR.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PLPCR.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PLPCR.version_registro IS 'Version Registro';
LABEL ON COLUMN PLPCR.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PLPCR.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PLPCR.observaciones IS 'Observaciones';
LABEL ON COLUMN PLPCR.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PLPCR.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PLPCR.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PLPCR.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PLPCR.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PLPCR.created_at IS 'Created At';
LABEL ON COLUMN PLPCR.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PLPCR.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PLPCR.updated_at IS 'Updated At';
LABEL ON COLUMN PLPCR.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_plpcr_created_at ON PLPCR (created_at);

-- TABLA: PLPRD
-- ============================================================================
-- Nombre de la Tabla: PLPRD
-- DESCRIPCIÓN: Tabla de datos para PLPRD en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PLPRD (
    numero_propuesta VARCHAR(30) NOT NULL FOR COLUMN NUMPRO,
    codigo_producto VARCHAR(20) NOT NULL FOR COLUMN CODPRO,
    tipo_producto VARCHAR(20) NOT NULL FOR COLUMN TIPPRO,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_plprd_pk PRIMARY KEY (numero_propuesta, codigo_producto, tipo_producto)
) RCDFMT PLPRD;
COMMENT ON TABLE PLPRD IS 'Tabla de datos para PLPRD en el módulo bancario.';
LABEL ON TABLE PLPRD IS 'PLPRD';

COMMENT ON COLUMN PLPRD.numero_propuesta IS 'Número del propuesta.';
LABEL ON COLUMN PLPRD.numero_propuesta IS 'Numero Propuesta';
LABEL ON COLUMN PLPRD.numero_propuesta TEXT IS 'Número del propuesta.';
COMMENT ON COLUMN PLPRD.codigo_producto IS 'Código del producto.';
LABEL ON COLUMN PLPRD.codigo_producto IS 'Codigo Producto';
LABEL ON COLUMN PLPRD.codigo_producto TEXT IS 'Código del producto.';
COMMENT ON COLUMN PLPRD.tipo_producto IS 'Tipo de producto asociado.';
LABEL ON COLUMN PLPRD.tipo_producto IS 'Tipo Producto';
LABEL ON COLUMN PLPRD.tipo_producto TEXT IS 'Tipo de producto asociado.';
COMMENT ON COLUMN PLPRD.fecha_propuesta IS 'Campo fecha propuesta de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN PLPRD.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.monto_solicitado IS 'Campo monto solicitado de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN PLPRD.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.plazo_meses IS 'Campo plazo meses de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN PLPRD.plazo_meses TEXT IS 'Campo plazo meses de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.tasa_propuesta IS 'Campo tasa propuesta de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN PLPRD.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.dictamen_credito IS 'Campo dictamen credito de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN PLPRD.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.estado_propuesta IS 'Campo estado propuesta de la tabla PLPRD.';
LABEL ON COLUMN PLPRD.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN PLPRD.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla PLPRD.';
COMMENT ON COLUMN PLPRD.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PLPRD.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PLPRD.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PLPRD.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PLPRD.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PLPRD.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PLPRD.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PLPRD.version_registro IS 'Version Registro';
LABEL ON COLUMN PLPRD.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PLPRD.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PLPRD.observaciones IS 'Observaciones';
LABEL ON COLUMN PLPRD.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PLPRD.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PLPRD.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PLPRD.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PLPRD.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PLPRD.created_at IS 'Created At';
LABEL ON COLUMN PLPRD.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PLPRD.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PLPRD.updated_at IS 'Updated At';
LABEL ON COLUMN PLPRD.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_plprd_created_at ON PLPRD (created_at);

-- TABLA: PLGRT
-- ============================================================================
-- Nombre de la Tabla: PLGRT
-- DESCRIPCIÓN: Tabla de datos para PLGRT en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE PLGRT (
    numero_propuesta VARCHAR(30) NOT NULL FOR COLUMN NUMPRO,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_plgrt_pk PRIMARY KEY (numero_propuesta, secuencia)
) RCDFMT PLGRT;
COMMENT ON TABLE PLGRT IS 'Tabla de datos para PLGRT en el módulo bancario.';
LABEL ON TABLE PLGRT IS 'PLGRT';

COMMENT ON COLUMN PLGRT.numero_propuesta IS 'Número del propuesta.';
LABEL ON COLUMN PLGRT.numero_propuesta IS 'Numero Propuesta';
LABEL ON COLUMN PLGRT.numero_propuesta TEXT IS 'Número del propuesta.';
COMMENT ON COLUMN PLGRT.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN PLGRT.secuencia IS 'Secuencia';
LABEL ON COLUMN PLGRT.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN PLGRT.fecha_propuesta IS 'Campo fecha propuesta de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN PLGRT.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.monto_solicitado IS 'Campo monto solicitado de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN PLGRT.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.plazo_meses IS 'Campo plazo meses de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN PLGRT.plazo_meses TEXT IS 'Campo plazo meses de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.tasa_propuesta IS 'Campo tasa propuesta de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN PLGRT.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.dictamen_credito IS 'Campo dictamen credito de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN PLGRT.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.estado_propuesta IS 'Campo estado propuesta de la tabla PLGRT.';
LABEL ON COLUMN PLGRT.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN PLGRT.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla PLGRT.';
COMMENT ON COLUMN PLGRT.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN PLGRT.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN PLGRT.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN PLGRT.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN PLGRT.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN PLGRT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN PLGRT.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN PLGRT.version_registro IS 'Version Registro';
LABEL ON COLUMN PLGRT.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN PLGRT.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN PLGRT.observaciones IS 'Observaciones';
LABEL ON COLUMN PLGRT.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN PLGRT.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN PLGRT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN PLGRT.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN PLGRT.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN PLGRT.created_at IS 'Created At';
LABEL ON COLUMN PLGRT.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN PLGRT.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN PLGRT.updated_at IS 'Updated At';
LABEL ON COLUMN PLGRT.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_plgrt_created_at ON PLGRT (created_at);

-- TABLA: DPMST
-- ============================================================================
-- Nombre de la Tabla: DPMST
-- DESCRIPCIÓN: Tabla de datos para DPMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DPMST (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dpmst_pk PRIMARY KEY (id_cliente, secuencia)
) RCDFMT DPMST;
COMMENT ON TABLE DPMST IS 'Tabla de datos para DPMST en el módulo bancario.';
LABEL ON TABLE DPMST IS 'DPMST';

COMMENT ON COLUMN DPMST.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN DPMST.id_cliente IS 'Id Cliente';
LABEL ON COLUMN DPMST.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN DPMST.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN DPMST.secuencia IS 'Secuencia';
LABEL ON COLUMN DPMST.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN DPMST.fecha_propuesta IS 'Campo fecha propuesta de la tabla DPMST.';
LABEL ON COLUMN DPMST.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN DPMST.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla DPMST.';
COMMENT ON COLUMN DPMST.monto_solicitado IS 'Campo monto solicitado de la tabla DPMST.';
LABEL ON COLUMN DPMST.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN DPMST.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla DPMST.';
COMMENT ON COLUMN DPMST.plazo_meses IS 'Campo plazo meses de la tabla DPMST.';
LABEL ON COLUMN DPMST.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DPMST.plazo_meses TEXT IS 'Campo plazo meses de la tabla DPMST.';
COMMENT ON COLUMN DPMST.tasa_propuesta IS 'Campo tasa propuesta de la tabla DPMST.';
LABEL ON COLUMN DPMST.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN DPMST.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla DPMST.';
COMMENT ON COLUMN DPMST.dictamen_credito IS 'Campo dictamen credito de la tabla DPMST.';
LABEL ON COLUMN DPMST.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN DPMST.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla DPMST.';
COMMENT ON COLUMN DPMST.estado_propuesta IS 'Campo estado propuesta de la tabla DPMST.';
LABEL ON COLUMN DPMST.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN DPMST.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla DPMST.';
COMMENT ON COLUMN DPMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DPMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DPMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DPMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DPMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DPMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DPMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DPMST.version_registro IS 'Version Registro';
LABEL ON COLUMN DPMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DPMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DPMST.observaciones IS 'Observaciones';
LABEL ON COLUMN DPMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DPMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DPMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DPMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DPMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DPMST.created_at IS 'Created At';
LABEL ON COLUMN DPMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DPMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DPMST.updated_at IS 'Updated At';
LABEL ON COLUMN DPMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dpmst_created_at ON DPMST (created_at);

-- TABLA: DPDTL
-- ============================================================================
-- Nombre de la Tabla: DPDTL
-- DESCRIPCIÓN: Tabla de datos para DPDTL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DPDTL (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_registro VARCHAR(20) NOT NULL FOR COLUMN TIPREG,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dpdtl_pk PRIMARY KEY (id_cliente, secuencia, tipo_registro)
) RCDFMT DPDTL;
COMMENT ON TABLE DPDTL IS 'Tabla de datos para DPDTL en el módulo bancario.';
LABEL ON TABLE DPDTL IS 'DPDTL';

COMMENT ON COLUMN DPDTL.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN DPDTL.id_cliente IS 'Id Cliente';
LABEL ON COLUMN DPDTL.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN DPDTL.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN DPDTL.secuencia IS 'Secuencia';
LABEL ON COLUMN DPDTL.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN DPDTL.tipo_registro IS 'Tipo de registro dentro de la tabla.';
LABEL ON COLUMN DPDTL.tipo_registro IS 'Tipo Registro';
LABEL ON COLUMN DPDTL.tipo_registro TEXT IS 'Tipo de registro dentro de la tabla.';
COMMENT ON COLUMN DPDTL.fecha_propuesta IS 'Campo fecha propuesta de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN DPDTL.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.monto_solicitado IS 'Campo monto solicitado de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN DPDTL.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.plazo_meses IS 'Campo plazo meses de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DPDTL.plazo_meses TEXT IS 'Campo plazo meses de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.tasa_propuesta IS 'Campo tasa propuesta de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN DPDTL.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.dictamen_credito IS 'Campo dictamen credito de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN DPDTL.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.estado_propuesta IS 'Campo estado propuesta de la tabla DPDTL.';
LABEL ON COLUMN DPDTL.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN DPDTL.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla DPDTL.';
COMMENT ON COLUMN DPDTL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DPDTL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DPDTL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DPDTL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DPDTL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DPDTL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DPDTL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DPDTL.version_registro IS 'Version Registro';
LABEL ON COLUMN DPDTL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DPDTL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DPDTL.observaciones IS 'Observaciones';
LABEL ON COLUMN DPDTL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DPDTL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DPDTL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DPDTL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DPDTL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DPDTL.created_at IS 'Created At';
LABEL ON COLUMN DPDTL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DPDTL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DPDTL.updated_at IS 'Updated At';
LABEL ON COLUMN DPDTL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dpdtl_created_at ON DPDTL (created_at);

-- TABLA: IFMST
-- ============================================================================
-- Nombre de la Tabla: IFMST
-- DESCRIPCIÓN: Tabla de datos para IFMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE IFMST (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    anio INTEGER NOT NULL FOR COLUMN ANIO,
    mes INTEGER NOT NULL FOR COLUMN MES,
    formato_balance VARCHAR(50) NOT NULL FOR COLUMN FORBAL,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ifmst_pk PRIMARY KEY (id_cliente, anio, mes, formato_balance)
) RCDFMT IFMST;
COMMENT ON TABLE IFMST IS 'Tabla de datos para IFMST en el módulo bancario.';
LABEL ON TABLE IFMST IS 'IFMST';

COMMENT ON COLUMN IFMST.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN IFMST.id_cliente IS 'Id Cliente';
LABEL ON COLUMN IFMST.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN IFMST.anio IS 'Campo anio de la tabla IFMST.';
LABEL ON COLUMN IFMST.anio IS 'Anio';
LABEL ON COLUMN IFMST.anio TEXT IS 'Campo anio de la tabla IFMST.';
COMMENT ON COLUMN IFMST.mes IS 'Campo mes de la tabla IFMST.';
LABEL ON COLUMN IFMST.mes IS 'Mes';
LABEL ON COLUMN IFMST.mes TEXT IS 'Campo mes de la tabla IFMST.';
COMMENT ON COLUMN IFMST.formato_balance IS 'Campo formato balance de la tabla IFMST.';
LABEL ON COLUMN IFMST.formato_balance IS 'Formato Balance';
LABEL ON COLUMN IFMST.formato_balance TEXT IS 'Campo formato balance de la tabla IFMST.';
COMMENT ON COLUMN IFMST.fecha_propuesta IS 'Campo fecha propuesta de la tabla IFMST.';
LABEL ON COLUMN IFMST.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN IFMST.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla IFMST.';
COMMENT ON COLUMN IFMST.monto_solicitado IS 'Campo monto solicitado de la tabla IFMST.';
LABEL ON COLUMN IFMST.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN IFMST.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla IFMST.';
COMMENT ON COLUMN IFMST.plazo_meses IS 'Campo plazo meses de la tabla IFMST.';
LABEL ON COLUMN IFMST.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN IFMST.plazo_meses TEXT IS 'Campo plazo meses de la tabla IFMST.';
COMMENT ON COLUMN IFMST.tasa_propuesta IS 'Campo tasa propuesta de la tabla IFMST.';
LABEL ON COLUMN IFMST.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN IFMST.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla IFMST.';
COMMENT ON COLUMN IFMST.dictamen_credito IS 'Campo dictamen credito de la tabla IFMST.';
LABEL ON COLUMN IFMST.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN IFMST.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla IFMST.';
COMMENT ON COLUMN IFMST.estado_propuesta IS 'Campo estado propuesta de la tabla IFMST.';
LABEL ON COLUMN IFMST.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN IFMST.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla IFMST.';
COMMENT ON COLUMN IFMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN IFMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN IFMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN IFMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN IFMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN IFMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN IFMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN IFMST.version_registro IS 'Version Registro';
LABEL ON COLUMN IFMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN IFMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN IFMST.observaciones IS 'Observaciones';
LABEL ON COLUMN IFMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN IFMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN IFMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN IFMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN IFMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN IFMST.created_at IS 'Created At';
LABEL ON COLUMN IFMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN IFMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN IFMST.updated_at IS 'Updated At';
LABEL ON COLUMN IFMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ifmst_created_at ON IFMST (created_at);

-- TABLA: IFDTL
-- ============================================================================
-- Nombre de la Tabla: IFDTL
-- DESCRIPCIÓN: Tabla de datos para IFDTL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE IFDTL (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    anio INTEGER NOT NULL FOR COLUMN ANIO,
    mes INTEGER NOT NULL FOR COLUMN MES,
    formato_balance VARCHAR(50) NOT NULL FOR COLUMN FORBAL,
    codigo_linea VARCHAR(20) NOT NULL FOR COLUMN CODLIN,
    codigo_cuenta VARCHAR(20) NOT NULL FOR COLUMN CODCUE,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ifdtl_pk PRIMARY KEY (id_cliente, anio, mes, formato_balance, codigo_linea, codigo_cuenta)
) RCDFMT IFDTL;
COMMENT ON TABLE IFDTL IS 'Tabla de datos para IFDTL en el módulo bancario.';
LABEL ON TABLE IFDTL IS 'IFDTL';

COMMENT ON COLUMN IFDTL.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN IFDTL.id_cliente IS 'Id Cliente';
LABEL ON COLUMN IFDTL.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN IFDTL.anio IS 'Campo anio de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.anio IS 'Anio';
LABEL ON COLUMN IFDTL.anio TEXT IS 'Campo anio de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.mes IS 'Campo mes de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.mes IS 'Mes';
LABEL ON COLUMN IFDTL.mes TEXT IS 'Campo mes de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.formato_balance IS 'Campo formato balance de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.formato_balance IS 'Formato Balance';
LABEL ON COLUMN IFDTL.formato_balance TEXT IS 'Campo formato balance de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.codigo_linea IS 'Código del linea.';
LABEL ON COLUMN IFDTL.codigo_linea IS 'Codigo Linea';
LABEL ON COLUMN IFDTL.codigo_linea TEXT IS 'Código del linea.';
COMMENT ON COLUMN IFDTL.codigo_cuenta IS 'Código del cuenta.';
LABEL ON COLUMN IFDTL.codigo_cuenta IS 'Codigo Cuenta';
LABEL ON COLUMN IFDTL.codigo_cuenta TEXT IS 'Código del cuenta.';
COMMENT ON COLUMN IFDTL.fecha_propuesta IS 'Campo fecha propuesta de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN IFDTL.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.monto_solicitado IS 'Campo monto solicitado de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN IFDTL.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.plazo_meses IS 'Campo plazo meses de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN IFDTL.plazo_meses TEXT IS 'Campo plazo meses de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.tasa_propuesta IS 'Campo tasa propuesta de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN IFDTL.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.dictamen_credito IS 'Campo dictamen credito de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN IFDTL.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.estado_propuesta IS 'Campo estado propuesta de la tabla IFDTL.';
LABEL ON COLUMN IFDTL.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN IFDTL.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla IFDTL.';
COMMENT ON COLUMN IFDTL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN IFDTL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN IFDTL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN IFDTL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN IFDTL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN IFDTL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN IFDTL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN IFDTL.version_registro IS 'Version Registro';
LABEL ON COLUMN IFDTL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN IFDTL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN IFDTL.observaciones IS 'Observaciones';
LABEL ON COLUMN IFDTL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN IFDTL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN IFDTL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN IFDTL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN IFDTL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN IFDTL.created_at IS 'Created At';
LABEL ON COLUMN IFDTL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN IFDTL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN IFDTL.updated_at IS 'Updated At';
LABEL ON COLUMN IFDTL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ifdtl_created_at ON IFDTL (created_at);

-- TABLA: DPGLN
-- ============================================================================
-- Nombre de la Tabla: DPGLN
-- DESCRIPCIÓN: Tabla de datos para DPGLN en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DPGLN (
    tipo_balance VARCHAR(20) NOT NULL FOR COLUMN TIPBAL,
    codigo_cuenta VARCHAR(20) NOT NULL FOR COLUMN CODCUE,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dpgln_pk PRIMARY KEY (tipo_balance, codigo_cuenta)
) RCDFMT DPGLN;
COMMENT ON TABLE DPGLN IS 'Tabla de datos para DPGLN en el módulo bancario.';
LABEL ON TABLE DPGLN IS 'DPGLN';

COMMENT ON COLUMN DPGLN.tipo_balance IS 'Campo tipo balance de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.tipo_balance IS 'Tipo Balance';
LABEL ON COLUMN DPGLN.tipo_balance TEXT IS 'Campo tipo balance de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.codigo_cuenta IS 'Código del cuenta.';
LABEL ON COLUMN DPGLN.codigo_cuenta IS 'Codigo Cuenta';
LABEL ON COLUMN DPGLN.codigo_cuenta TEXT IS 'Código del cuenta.';
COMMENT ON COLUMN DPGLN.fecha_propuesta IS 'Campo fecha propuesta de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN DPGLN.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.monto_solicitado IS 'Campo monto solicitado de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN DPGLN.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.plazo_meses IS 'Campo plazo meses de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN DPGLN.plazo_meses TEXT IS 'Campo plazo meses de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.tasa_propuesta IS 'Campo tasa propuesta de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN DPGLN.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.dictamen_credito IS 'Campo dictamen credito de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN DPGLN.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.estado_propuesta IS 'Campo estado propuesta de la tabla DPGLN.';
LABEL ON COLUMN DPGLN.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN DPGLN.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla DPGLN.';
COMMENT ON COLUMN DPGLN.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DPGLN.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DPGLN.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DPGLN.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DPGLN.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DPGLN.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DPGLN.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DPGLN.version_registro IS 'Version Registro';
LABEL ON COLUMN DPGLN.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DPGLN.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DPGLN.observaciones IS 'Observaciones';
LABEL ON COLUMN DPGLN.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DPGLN.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DPGLN.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DPGLN.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DPGLN.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DPGLN.created_at IS 'Created At';
LABEL ON COLUMN DPGLN.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DPGLN.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DPGLN.updated_at IS 'Updated At';
LABEL ON COLUMN DPGLN.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dpgln_created_at ON DPGLN (created_at);

-- TABLA: LIMST
-- ============================================================================
-- Nombre de la Tabla: LIMST
-- DESCRIPCIÓN: Tabla de datos para LIMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE LIMST (
    id_cliente VARCHAR(30) NOT NULL FOR COLUMN IDCLIENTE,
    fecha_propuesta DATE FOR COLUMN FECPRO,
    monto_solicitado DECIMAL(18,2) FOR COLUMN MONSOL,
    plazo_meses INTEGER FOR COLUMN PLAZOMESES,
    tasa_propuesta DECIMAL(18,2) FOR COLUMN TASPRO,
    dictamen_credito VARCHAR(120) FOR COLUMN DICCRE,
    estado_propuesta VARCHAR(20) FOR COLUMN ESTPRO,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_limst_pk PRIMARY KEY (id_cliente)
) RCDFMT LIMST;
COMMENT ON TABLE LIMST IS 'Tabla de datos para LIMST en el módulo bancario.';
LABEL ON TABLE LIMST IS 'LIMST';

COMMENT ON COLUMN LIMST.id_cliente IS 'Identificador del cliente.';
LABEL ON COLUMN LIMST.id_cliente IS 'Id Cliente';
LABEL ON COLUMN LIMST.id_cliente TEXT IS 'Identificador del cliente.';
COMMENT ON COLUMN LIMST.fecha_propuesta IS 'Campo fecha propuesta de la tabla LIMST.';
LABEL ON COLUMN LIMST.fecha_propuesta IS 'Fecha Propuesta';
LABEL ON COLUMN LIMST.fecha_propuesta TEXT IS 'Campo fecha propuesta de la tabla LIMST.';
COMMENT ON COLUMN LIMST.monto_solicitado IS 'Campo monto solicitado de la tabla LIMST.';
LABEL ON COLUMN LIMST.monto_solicitado IS 'Monto Solicitado';
LABEL ON COLUMN LIMST.monto_solicitado TEXT IS 'Campo monto solicitado de la tabla LIMST.';
COMMENT ON COLUMN LIMST.plazo_meses IS 'Campo plazo meses de la tabla LIMST.';
LABEL ON COLUMN LIMST.plazo_meses IS 'Plazo Meses';
LABEL ON COLUMN LIMST.plazo_meses TEXT IS 'Campo plazo meses de la tabla LIMST.';
COMMENT ON COLUMN LIMST.tasa_propuesta IS 'Campo tasa propuesta de la tabla LIMST.';
LABEL ON COLUMN LIMST.tasa_propuesta IS 'Tasa Propuesta';
LABEL ON COLUMN LIMST.tasa_propuesta TEXT IS 'Campo tasa propuesta de la tabla LIMST.';
COMMENT ON COLUMN LIMST.dictamen_credito IS 'Campo dictamen credito de la tabla LIMST.';
LABEL ON COLUMN LIMST.dictamen_credito IS 'Dictamen Credito';
LABEL ON COLUMN LIMST.dictamen_credito TEXT IS 'Campo dictamen credito de la tabla LIMST.';
COMMENT ON COLUMN LIMST.estado_propuesta IS 'Campo estado propuesta de la tabla LIMST.';
LABEL ON COLUMN LIMST.estado_propuesta IS 'Estado Propuesta';
LABEL ON COLUMN LIMST.estado_propuesta TEXT IS 'Campo estado propuesta de la tabla LIMST.';
COMMENT ON COLUMN LIMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN LIMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN LIMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN LIMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN LIMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN LIMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN LIMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN LIMST.version_registro IS 'Version Registro';
LABEL ON COLUMN LIMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN LIMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN LIMST.observaciones IS 'Observaciones';
LABEL ON COLUMN LIMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN LIMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN LIMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN LIMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN LIMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN LIMST.created_at IS 'Created At';
LABEL ON COLUMN LIMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN LIMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN LIMST.updated_at IS 'Updated At';
LABEL ON COLUMN LIMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_limst_created_at ON LIMST (created_at);

-- ============================================================================
-- MODULO 14: MANEJO DE DOCUMENTOS (2 tablas)
-- ============================================================================

-- TABLA: DIMST
-- ============================================================================
-- Nombre de la Tabla: DIMST
-- DESCRIPCIÓN: Tabla de datos para DIMST en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DIMST (
    tipo_cuenta VARCHAR(20) NOT NULL FOR COLUMN TIPOCUENTA,
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    descripcion_documento VARCHAR(120) FOR COLUMN DESDOC,
    obligatorio BOOLEAN FOR COLUMN OBL,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_dimst_pk PRIMARY KEY (tipo_cuenta, numero_tabla, secuencia)
) RCDFMT DIMST;
COMMENT ON TABLE DIMST IS 'Tabla de datos para DIMST en el módulo bancario.';
LABEL ON TABLE DIMST IS 'DIMST';

COMMENT ON COLUMN DIMST.tipo_cuenta IS 'Campo tipo cuenta de la tabla DIMST.';
LABEL ON COLUMN DIMST.tipo_cuenta IS 'Tipo Cuenta';
LABEL ON COLUMN DIMST.tipo_cuenta TEXT IS 'Campo tipo cuenta de la tabla DIMST.';
COMMENT ON COLUMN DIMST.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN DIMST.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN DIMST.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN DIMST.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN DIMST.secuencia IS 'Secuencia';
LABEL ON COLUMN DIMST.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN DIMST.tipo_documento IS 'Campo tipo documento de la tabla DIMST.';
LABEL ON COLUMN DIMST.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN DIMST.tipo_documento TEXT IS 'Campo tipo documento de la tabla DIMST.';
COMMENT ON COLUMN DIMST.descripcion_documento IS 'Campo descripcion documento de la tabla DIMST.';
LABEL ON COLUMN DIMST.descripcion_documento IS 'Descripcion Documento';
LABEL ON COLUMN DIMST.descripcion_documento TEXT IS 'Campo descripcion documento de la tabla DIMST.';
COMMENT ON COLUMN DIMST.obligatorio IS 'Campo obligatorio de la tabla DIMST.';
LABEL ON COLUMN DIMST.obligatorio IS 'Obligatorio';
LABEL ON COLUMN DIMST.obligatorio TEXT IS 'Campo obligatorio de la tabla DIMST.';
COMMENT ON COLUMN DIMST.fecha_recepcion IS 'Campo fecha recepcion de la tabla DIMST.';
LABEL ON COLUMN DIMST.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN DIMST.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla DIMST.';
COMMENT ON COLUMN DIMST.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DIMST.';
LABEL ON COLUMN DIMST.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DIMST.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DIMST.';
COMMENT ON COLUMN DIMST.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DIMST.observaciones IS 'Observaciones';
LABEL ON COLUMN DIMST.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DIMST.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DIMST.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DIMST.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DIMST.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DIMST.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DIMST.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DIMST.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DIMST.version_registro IS 'Version Registro';
LABEL ON COLUMN DIMST.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DIMST.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DIMST.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DIMST.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DIMST.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DIMST.created_at IS 'Created At';
LABEL ON COLUMN DIMST.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DIMST.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DIMST.updated_at IS 'Updated At';
LABEL ON COLUMN DIMST.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_dimst_created_at ON DIMST (created_at);

-- TABLA: DITBL
-- ============================================================================
-- Nombre de la Tabla: DITBL
-- DESCRIPCIÓN: Tabla de datos para DITBL en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE DITBL (
    numero_tabla VARCHAR(30) NOT NULL FOR COLUMN NUMTAB,
    secuencia INTEGER NOT NULL FOR COLUMN SECUENCIA,
    tipo_documento VARCHAR(20) FOR COLUMN TIPDOC,
    descripcion_documento VARCHAR(120) FOR COLUMN DESDOC,
    obligatorio BOOLEAN FOR COLUMN OBL,
    fecha_recepcion DATE FOR COLUMN FECREC,
    fecha_vencimiento DATE FOR COLUMN FECVEN,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_ditbl_pk PRIMARY KEY (numero_tabla, secuencia)
) RCDFMT DITBL;
COMMENT ON TABLE DITBL IS 'Tabla de datos para DITBL en el módulo bancario.';
LABEL ON TABLE DITBL IS 'DITBL';

COMMENT ON COLUMN DITBL.numero_tabla IS 'Número del tabla.';
LABEL ON COLUMN DITBL.numero_tabla IS 'Numero Tabla';
LABEL ON COLUMN DITBL.numero_tabla TEXT IS 'Número del tabla.';
COMMENT ON COLUMN DITBL.secuencia IS 'Secuencia de orden dentro del registro.';
LABEL ON COLUMN DITBL.secuencia IS 'Secuencia';
LABEL ON COLUMN DITBL.secuencia TEXT IS 'Secuencia de orden dentro del registro.';
COMMENT ON COLUMN DITBL.tipo_documento IS 'Campo tipo documento de la tabla DITBL.';
LABEL ON COLUMN DITBL.tipo_documento IS 'Tipo Documento';
LABEL ON COLUMN DITBL.tipo_documento TEXT IS 'Campo tipo documento de la tabla DITBL.';
COMMENT ON COLUMN DITBL.descripcion_documento IS 'Campo descripcion documento de la tabla DITBL.';
LABEL ON COLUMN DITBL.descripcion_documento IS 'Descripcion Documento';
LABEL ON COLUMN DITBL.descripcion_documento TEXT IS 'Campo descripcion documento de la tabla DITBL.';
COMMENT ON COLUMN DITBL.obligatorio IS 'Campo obligatorio de la tabla DITBL.';
LABEL ON COLUMN DITBL.obligatorio IS 'Obligatorio';
LABEL ON COLUMN DITBL.obligatorio TEXT IS 'Campo obligatorio de la tabla DITBL.';
COMMENT ON COLUMN DITBL.fecha_recepcion IS 'Campo fecha recepcion de la tabla DITBL.';
LABEL ON COLUMN DITBL.fecha_recepcion IS 'Fecha Recepcion';
LABEL ON COLUMN DITBL.fecha_recepcion TEXT IS 'Campo fecha recepcion de la tabla DITBL.';
COMMENT ON COLUMN DITBL.fecha_vencimiento IS 'Campo fecha vencimiento de la tabla DITBL.';
LABEL ON COLUMN DITBL.fecha_vencimiento IS 'Fecha Vencimiento';
LABEL ON COLUMN DITBL.fecha_vencimiento TEXT IS 'Campo fecha vencimiento de la tabla DITBL.';
COMMENT ON COLUMN DITBL.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN DITBL.observaciones IS 'Observaciones';
LABEL ON COLUMN DITBL.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN DITBL.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN DITBL.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN DITBL.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN DITBL.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN DITBL.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN DITBL.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN DITBL.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN DITBL.version_registro IS 'Version Registro';
LABEL ON COLUMN DITBL.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN DITBL.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN DITBL.estado_registro IS 'Estado Registro';
LABEL ON COLUMN DITBL.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN DITBL.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN DITBL.created_at IS 'Created At';
LABEL ON COLUMN DITBL.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN DITBL.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN DITBL.updated_at IS 'Updated At';
LABEL ON COLUMN DITBL.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_ditbl_created_at ON DITBL (created_at);

-- ============================================================================
-- MODULO 15: SEGURIDAD (1 tabla)
-- ============================================================================

-- TABLA: USERS
-- ============================================================================
-- Nombre de la Tabla: USERS
-- DESCRIPCIÓN: Tabla de datos para USERS en el módulo bancario.
-- Objetivo: Mantener la estructura de datos y metadatos de la entidad.
-- Tipo de Tabla: SQL
-- Origen de los Datos: Generado por procesos y configuración interna.
-- Permanencia de Datos: Permanente
-- Uso de los datos: Soporte de operaciones bancarias y reportes.
-- Restricciones: Mantener integridad referencial y documentación completa.
-- Hecho por: Equipo Taller
-- Fecha: 2026-06-17
-- Proyecto: TallerGitHub - Banco DB2 IBM i
-- ============================================================================
CREATE OR REPLACE TABLE USERS (
    codigo_usuario VARCHAR(20) NOT NULL FOR COLUMN CODUSU,
    menu VARCHAR(20) NOT NULL FOR COLUMN MENU,
    opcion VARCHAR(20) NOT NULL FOR COLUMN OPCION,
    rol VARCHAR(20) FOR COLUMN ROL,
    nivel_autorizacion INTEGER FOR COLUMN NIVAUT,
    permite_consulta BOOLEAN FOR COLUMN PERCON,
    permite_creacion BOOLEAN FOR COLUMN PERCRE,
    permite_actualizacion BOOLEAN FOR COLUMN PERACT,
    permite_aprobacion BOOLEAN FOR COLUMN PERAPR,
    usuario_creacion VARCHAR(30) FOR COLUMN USUCRE,
    usuario_actualizacion VARCHAR(30) FOR COLUMN USUACT,
    version_registro INTEGER FOR COLUMN VERREG,
    observaciones VARCHAR(120) FOR COLUMN OBS,
    estado_registro CHAR(1) FOR COLUMN ESTREG,
    created_at TIMESTAMP FOR COLUMN CREATEDAT,
    updated_at TIMESTAMP FOR COLUMN UPDATEDAT,
    CONSTRAINT idx_users_pk PRIMARY KEY (codigo_usuario, menu, opcion)
) RCDFMT USERS;
COMMENT ON TABLE USERS IS 'Tabla de datos para USERS en el módulo bancario.';
LABEL ON TABLE USERS IS 'USERS';

COMMENT ON COLUMN USERS.codigo_usuario IS 'Código del usuario.';
LABEL ON COLUMN USERS.codigo_usuario IS 'Codigo Usuario';
LABEL ON COLUMN USERS.codigo_usuario TEXT IS 'Código del usuario.';
COMMENT ON COLUMN USERS.menu IS 'Campo menu de la tabla USERS.';
LABEL ON COLUMN USERS.menu IS 'Menu';
LABEL ON COLUMN USERS.menu TEXT IS 'Campo menu de la tabla USERS.';
COMMENT ON COLUMN USERS.opcion IS 'Campo opcion de la tabla USERS.';
LABEL ON COLUMN USERS.opcion IS 'Opcion';
LABEL ON COLUMN USERS.opcion TEXT IS 'Campo opcion de la tabla USERS.';
COMMENT ON COLUMN USERS.rol IS 'Campo rol de la tabla USERS.';
LABEL ON COLUMN USERS.rol IS 'Rol';
LABEL ON COLUMN USERS.rol TEXT IS 'Campo rol de la tabla USERS.';
COMMENT ON COLUMN USERS.nivel_autorizacion IS 'Campo nivel autorizacion de la tabla USERS.';
LABEL ON COLUMN USERS.nivel_autorizacion IS 'Nivel Autorizacion';
LABEL ON COLUMN USERS.nivel_autorizacion TEXT IS 'Campo nivel autorizacion de la tabla USERS.';
COMMENT ON COLUMN USERS.permite_consulta IS 'Campo permite consulta de la tabla USERS.';
LABEL ON COLUMN USERS.permite_consulta IS 'Permite Consulta';
LABEL ON COLUMN USERS.permite_consulta TEXT IS 'Campo permite consulta de la tabla USERS.';
COMMENT ON COLUMN USERS.permite_creacion IS 'Campo permite creacion de la tabla USERS.';
LABEL ON COLUMN USERS.permite_creacion IS 'Permite Creacion';
LABEL ON COLUMN USERS.permite_creacion TEXT IS 'Campo permite creacion de la tabla USERS.';
COMMENT ON COLUMN USERS.permite_actualizacion IS 'Campo permite actualizacion de la tabla USERS.';
LABEL ON COLUMN USERS.permite_actualizacion IS 'Permite Actualizacion';
LABEL ON COLUMN USERS.permite_actualizacion TEXT IS 'Campo permite actualizacion de la tabla USERS.';
COMMENT ON COLUMN USERS.permite_aprobacion IS 'Campo permite aprobacion de la tabla USERS.';
LABEL ON COLUMN USERS.permite_aprobacion IS 'Permite Aprobacion';
LABEL ON COLUMN USERS.permite_aprobacion TEXT IS 'Campo permite aprobacion de la tabla USERS.';
COMMENT ON COLUMN USERS.usuario_creacion IS 'Usuario que creó el registro.';
LABEL ON COLUMN USERS.usuario_creacion IS 'Usuario Creacion';
LABEL ON COLUMN USERS.usuario_creacion TEXT IS 'Usuario que creó el registro.';
COMMENT ON COLUMN USERS.usuario_actualizacion IS 'Usuario que actualizó el registro.';
LABEL ON COLUMN USERS.usuario_actualizacion IS 'Usuario Actualizacion';
LABEL ON COLUMN USERS.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro.';
COMMENT ON COLUMN USERS.version_registro IS 'Número de versión del registro.';
LABEL ON COLUMN USERS.version_registro IS 'Version Registro';
LABEL ON COLUMN USERS.version_registro TEXT IS 'Número de versión del registro.';
COMMENT ON COLUMN USERS.observaciones IS 'Notas u observaciones adicionales.';
LABEL ON COLUMN USERS.observaciones IS 'Observaciones';
LABEL ON COLUMN USERS.observaciones TEXT IS 'Notas u observaciones adicionales.';
COMMENT ON COLUMN USERS.estado_registro IS 'Indicador de estado del registro.';
LABEL ON COLUMN USERS.estado_registro IS 'Estado Registro';
LABEL ON COLUMN USERS.estado_registro TEXT IS 'Indicador de estado del registro.';
COMMENT ON COLUMN USERS.created_at IS 'Marca de fecha y hora de creación del registro.';
LABEL ON COLUMN USERS.created_at IS 'Created At';
LABEL ON COLUMN USERS.created_at TEXT IS 'Marca de fecha y hora de creación del registro.';
COMMENT ON COLUMN USERS.updated_at IS 'Marca de fecha y hora de última actualización del registro.';
LABEL ON COLUMN USERS.updated_at IS 'Updated At';
LABEL ON COLUMN USERS.updated_at TEXT IS 'Marca de fecha y hora de última actualización del registro.';


CREATE INDEX idx_users_created_at ON USERS (created_at);

-- ============================================================================
-- FIN DEL SCRIPT DDL
-- ============================================================================
-- Total de tablas: 114
-- Total de módulos: 15
-- Ejecutado en: DB2 IBM i
-- ============================================================================
