class RegistroBovino < ActiveRecord::Base
  attr_accessible :alta_explotacion, :baja_explotacion, :balance_fecha, :balance_numero_cabezas, :causa_alta, :causa_baja, :comprador_codigo, :comprador_nif, :comprador_nombre, :crotal, :crotal_madre, :id, :nacimiento, :raza, :sexo, :traslado_numero, :traslado_serie, :vendedor_codigo, :vendedor_explotacion, :vendedor_nif, :vendedor_nombre
end
