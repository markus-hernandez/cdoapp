class CreateRegistroBovinos < ActiveRecord::Migration
  def change
    create_table :registro_bovinos do |t|
      t.integer :id
      t.string :crotal
      t.date :nacimiento
      t.string :sexo
      t.string :raza
      t.string :causa_alta
      t.string :vendedor_nombre
      t.string :vendedor_nif
      t.string :vendedor_codigo
      t.string :vendedor_explotacion
      t.string :crotal_madre
      t.date :alta_explotacion
      t.string :causa_baja
      t.string :comprador_nombre
      t.string :comprador_nif
      t.string :comprador_codigo
      t.date :baja_explotacion
      t.string :traslado_serie
      t.string :traslado_numero
      t.date :balance_fecha
      t.integer :balance_numero_cabezas

      t.timestamps
    end
  end
end
