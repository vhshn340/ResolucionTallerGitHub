**free
ctl-opt dftactgrp(*no) actgrp(*caller) option(*srcstmt: *nodebugio);

exec sql include sqlca;

// Bean de acceso a la tabla GLBLN

dcl-ds GLBLNBean qualified;
  codigo_banco varchar(20);
  codigo_sucursal varchar(20);
  codigo_moneda varchar(20);
  cuenta_contable varchar(24);
  descripcion_cuenta varchar(120);
  naturaleza_cuenta varchar(20);
  nivel_cuenta varchar(50);
  saldo_actual packed(18:2);
  fecha_proceso_sistema timestamp;
  observaciones varchar(120);
  usuario_creacion varchar(30);
  usuario_actualizacion varchar(30);
  version_registro int(10);
  estado_registro char(1);
  created_at timestamp;
  updated_at timestamp;
end-ds;

// Inicializa el bean en blanco

dcl-proc initGLBLNBean;
  dcl-pi *n;
  end-pi;

  GLBLNBean.codigo_banco = '';
  GLBLNBean.codigo_sucursal = '';
  GLBLNBean.codigo_moneda = '';
  GLBLNBean.cuenta_contable = '';
  GLBLNBean.descripcion_cuenta = '';
  GLBLNBean.naturaleza_cuenta = '';
  GLBLNBean.nivel_cuenta = '';
  GLBLNBean.saldo_actual = 0;
  GLBLNBean.fecha_proceso_sistema = *timestamp;
  GLBLNBean.observaciones = '';
  GLBLNBean.usuario_creacion = '';
  GLBLNBean.usuario_actualizacion = '';
  GLBLNBean.version_registro = 0;
  GLBLNBean.estado_registro = ' ';
  GLBLNBean.created_at = *timestamp;
  GLBLNBean.updated_at = *timestamp;

end-proc;

// Inserta un registro GLBLN usando los valores del bean

dcl-proc insertGLBLN;
  dcl-pi *n;
  end-pi;

  exec sql
    insert into GLBLN (
      codigo_banco,
      codigo_sucursal,
      codigo_moneda,
      cuenta_contable,
      descripcion_cuenta,
      naturaleza_cuenta,
      nivel_cuenta,
      saldo_actual,
      fecha_proceso_sistema,
      observaciones,
      usuario_creacion,
      usuario_actualizacion,
      version_registro,
      estado_registro,
      created_at,
      updated_at
    ) values (
      :GLBLNBean.codigo_banco,
      :GLBLNBean.codigo_sucursal,
      :GLBLNBean.codigo_moneda,
      :GLBLNBean.cuenta_contable,
      :GLBLNBean.descripcion_cuenta,
      :GLBLNBean.naturaleza_cuenta,
      :GLBLNBean.nivel_cuenta,
      :GLBLNBean.saldo_actual,
      :GLBLNBean.fecha_proceso_sistema,
      :GLBLNBean.observaciones,
      :GLBLNBean.usuario_creacion,
      :GLBLNBean.usuario_actualizacion,
      :GLBLNBean.version_registro,
      :GLBLNBean.estado_registro,
      :GLBLNBean.created_at,
      :GLBLNBean.updated_at
    );

end-proc;

// Busca un registro GLBLN por su llave primaria y carga el bean

dcl-proc searchGLBLN;
  dcl-pi *n ind;
    pCodigoBanco varchar(20);
    pCodigoSucursal varchar(20);
    pCodigoMoneda varchar(20);
    pCuentaContable varchar(24);
  end-pi;

  exec sql
    select
      descripcion_cuenta,
      naturaleza_cuenta,
      nivel_cuenta,
      saldo_actual,
      fecha_proceso_sistema,
      observaciones,
      usuario_creacion,
      usuario_actualizacion,
      version_registro,
      estado_registro,
      created_at,
      updated_at
    into
      :GLBLNBean.descripcion_cuenta,
      :GLBLNBean.naturaleza_cuenta,
      :GLBLNBean.nivel_cuenta,
      :GLBLNBean.saldo_actual,
      :GLBLNBean.fecha_proceso_sistema,
      :GLBLNBean.observaciones,
      :GLBLNBean.usuario_creacion,
      :GLBLNBean.usuario_actualizacion,
      :GLBLNBean.version_registro,
      :GLBLNBean.estado_registro,
      :GLBLNBean.created_at,
      :GLBLNBean.updated_at
    from GLBLN
    where codigo_banco = :pCodigoBanco
      and codigo_sucursal = :pCodigoSucursal
      and codigo_moneda = :pCodigoMoneda
      and cuenta_contable = :pCuentaContable;

  if sqlcode = 0;
    GLBLNBean.codigo_banco = pCodigoBanco;
    GLBLNBean.codigo_sucursal = pCodigoSucursal;
    GLBLNBean.codigo_moneda = pCodigoMoneda;
    GLBLNBean.cuenta_contable = pCuentaContable;
    return *on;
  else;
    return *off;
  endif;

end-proc;

// Actualiza un registro GLBLN según la llave primaria del bean

dcl-proc updateGLBLN;
  dcl-pi *n ind;
  end-pi;

  exec sql
    update GLBLN
    set
      descripcion_cuenta = :GLBLNBean.descripcion_cuenta,
      naturaleza_cuenta = :GLBLNBean.naturaleza_cuenta,
      nivel_cuenta = :GLBLNBean.nivel_cuenta,
      saldo_actual = :GLBLNBean.saldo_actual,
      fecha_proceso_sistema = :GLBLNBean.fecha_proceso_sistema,
      observaciones = :GLBLNBean.observaciones,
      usuario_creacion = :GLBLNBean.usuario_creacion,
      usuario_actualizacion = :GLBLNBean.usuario_actualizacion,
      version_registro = :GLBLNBean.version_registro,
      estado_registro = :GLBLNBean.estado_registro,
      created_at = :GLBLNBean.created_at,
      updated_at = :GLBLNBean.updated_at
    where codigo_banco = :GLBLNBean.codigo_banco
      and codigo_sucursal = :GLBLNBean.codigo_sucursal
      and codigo_moneda = :GLBLNBean.codigo_moneda
      and cuenta_contable = :GLBLNBean.cuenta_contable;

  if sqlcode = 0;
    return *on;
  else;
    return *off;
  endif;

end-proc;

// Elimina un registro GLBLN por su llave primaria

dcl-proc deleteGLBLN;
  dcl-pi *n ind;
  end-pi;

  exec sql
    delete from GLBLN
    where codigo_banco = :GLBLNBean.codigo_banco
      and codigo_sucursal = :GLBLNBean.codigo_sucursal
      and codigo_moneda = :GLBLNBean.codigo_moneda
      and cuenta_contable = :GLBLNBean.cuenta_contable;

  if sqlcode = 0;
    return *on;
  else;
    return *off;
  endif;

end-proc;

// Getters y setters

dcl-proc setCodigoBanco;
  dcl-pi *n;
    pCodigoBanco varchar(20);
  end-pi;
  GLBLNBean.codigo_banco = pCodigoBanco;
end-proc;

dcl-proc getCodigoBanco;
  dcl-pi char(20);
  end-pi;
  return GLBLNBean.codigo_banco;
end-proc;

// ... (repeat para todos los campos)

// Setter y getter de codigo_sucursal

dcl-proc setCodigoSucursal;
  dcl-pi *n;
    pCodigoSucursal varchar(20);
  end-pi;
  GLBLNBean.codigo_sucursal = pCodigoSucursal;
end-proc;

dcl-proc getCodigoSucursal;
  dcl-pi char(20);
  end-pi;
  return GLBLNBean.codigo_sucursal;
end-proc;

// Setter y getter de codigo_moneda

dcl-proc setCodigoMoneda;
  dcl-pi *n;
    pCodigoMoneda varchar(20);
  end-pi;
  GLBLNBean.codigo_moneda = pCodigoMoneda;
end-proc;

dcl-proc getCodigoMoneda;
  dcl-pi char(20);
  end-pi;
  return GLBLNBean.codigo_moneda;
end-proc;

// Setter y getter de cuenta_contable

dcl-proc setCuentaContable;
  dcl-pi *n;
    pCuentaContable varchar(24);
  end-pi;
  GLBLNBean.cuenta_contable = pCuentaContable;
end-proc;

dcl-proc getCuentaContable;
  dcl-pi char(24);
  end-pi;
  return GLBLNBean.cuenta_contable;
end-proc;

// Setter y getter de descripcion_cuenta

dcl-proc setDescripcionCuenta;
  dcl-pi *n;
    pDescripcionCuenta varchar(120);
  end-pi;
  GLBLNBean.descripcion_cuenta = pDescripcionCuenta;
end-proc;

dcl-proc getDescripcionCuenta;
  dcl-pi char(120);
  end-pi;
  return GLBLNBean.descripcion_cuenta;
end-proc;

// Setter y getter de naturaleza_cuenta

dcl-proc setNaturalezaCuenta;
  dcl-pi *n;
    pNaturalezaCuenta varchar(20);
  end-pi;
  GLBLNBean.naturaleza_cuenta = pNaturalezaCuenta;
end-proc;

dcl-proc getNaturalezaCuenta;
  dcl-pi char(20);
  end-pi;
  return GLBLNBean.naturaleza_cuenta;
end-proc;

// Setter y getter de nivel_cuenta

dcl-proc setNivelCuenta;
  dcl-pi *n;
    pNivelCuenta varchar(50);
  end-pi;
  GLBLNBean.nivel_cuenta = pNivelCuenta;
end-proc;

dcl-proc getNivelCuenta;
  dcl-pi char(50);
  end-pi;
  return GLBLNBean.nivel_cuenta;
end-proc;

// Setter y getter de saldo_actual

dcl-proc setSaldoActual;
  dcl-pi *n;
    pSaldoActual packed(18:2);
  end-pi;
  GLBLNBean.saldo_actual = pSaldoActual;
end-proc;

dcl-proc getSaldoActual;
  dcl-pi packed(18:2);
  end-pi;
  return GLBLNBean.saldo_actual;
end-proc;

// Setter y getter de fecha_proceso_sistema

dcl-proc setFechaProcesoSistema;
  dcl-pi *n;
    pFechaProcesoSistema timestamp;
  end-pi;
  GLBLNBean.fecha_proceso_sistema = pFechaProcesoSistema;
end-proc;

dcl-proc getFechaProcesoSistema;
  dcl-pi timestamp;
  end-pi;
  return GLBLNBean.fecha_proceso_sistema;
end-proc;

// Setter y getter de observaciones

dcl-proc setObservaciones;
  dcl-pi *n;
    pObservaciones varchar(120);
  end-pi;
  GLBLNBean.observaciones = pObservaciones;
end-proc;

dcl-proc getObservaciones;
  dcl-pi char(120);
  end-pi;
  return GLBLNBean.observaciones;
end-proc;

// Setter y getter de usuario_creacion

dcl-proc setUsuarioCreacion;
  dcl-pi *n;
    pUsuarioCreacion varchar(30);
  end-pi;
  GLBLNBean.usuario_creacion = pUsuarioCreacion;
end-proc;

dcl-proc getUsuarioCreacion;
  dcl-pi char(30);
  end-pi;
  return GLBLNBean.usuario_creacion;
end-proc;

// Setter y getter de usuario_actualizacion

dcl-proc setUsuarioActualizacion;
  dcl-pi *n;
    pUsuarioActualizacion varchar(30);
  end-pi;
  GLBLNBean.usuario_actualizacion = pUsuarioActualizacion;
end-proc;

dcl-proc getUsuarioActualizacion;
  dcl-pi char(30);
  end-pi;
  return GLBLNBean.usuario_actualizacion;
end-proc;

// Setter y getter de version_registro

dcl-proc setVersionRegistro;
  dcl-pi *n;
    pVersionRegistro int(10);
  end-pi;
  GLBLNBean.version_registro = pVersionRegistro;
end-proc;

dcl-proc getVersionRegistro;
  dcl-pi int(10);
  end-pi;
  return GLBLNBean.version_registro;
end-proc;

// Setter y getter de estado_registro

dcl-proc setEstadoRegistro;
  dcl-pi *n;
    pEstadoRegistro char(1);
  end-pi;
  GLBLNBean.estado_registro = pEstadoRegistro;
end-proc;

dcl-proc getEstadoRegistro;
  dcl-pi char(1);
  end-pi;
  return GLBLNBean.estado_registro;
end-proc;

// Setter y getter de created_at

dcl-proc setCreatedAt;
  dcl-pi *n;
    pCreatedAt timestamp;
  end-pi;
  GLBLNBean.created_at = pCreatedAt;
end-proc;

dcl-proc getCreatedAt;
  dcl-pi timestamp;
  end-pi;
  return GLBLNBean.created_at;
end-proc;

// Setter y getter de updated_at

dcl-proc setUpdatedAt;
  dcl-pi *n;
    pUpdatedAt timestamp;
  end-pi;
  GLBLNBean.updated_at = pUpdatedAt;
end-proc;

dcl-proc getUpdatedAt;
  dcl-pi timestamp;
  end-pi;
  return GLBLNBean.updated_at;
end-proc;

// Fin del módulo
