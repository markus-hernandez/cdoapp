xml.instruct! :xml, :version=>"1.0"

xml.tag!("rows") do
    @registro_bovinos.each do |registro_bovino|
        xml.tag!("row",{ "id" => registro_bovino.id }) do
            xml.tag!("cell", registro_bovino.crotal)
            xml.tag!("cell", registro_bovino.nacimiento)
            xml.tag!("cell", registro_bovino.sexo)
            xml.tag!("cell", registro_bovino.raza)
            xml.tag!("cell", registro_bovino.alta_explotacion)
            xml.tag!("cell", registro_bovino.causa_alta)
            xml.tag!("cell", registro_bovino.vendedor_nombre)
            xml.tag!("cell", registro_bovino.vendedor_nif)
            xml.tag!("cell", registro_bovino.vendedor_codigo)
            xml.tag!("cell", registro_bovino.vendedor_explotacion)
            xml.tag!("cell", registro_bovino.crotal_madre)
            xml.tag!("cell", registro_bovino.baja_explotacion)
            xml.tag!("cell", registro_bovino.causa_baja)
            xml.tag!("cell", registro_bovino.comprador_nombre)
            xml.tag!("cell", registro_bovino.comprador_nif)
            xml.tag!("cell", registro_bovino.comprador_codigo)
            xml.tag!("cell", registro_bovino.traslado_serie)
            xml.tag!("cell", registro_bovino.traslado_numero)
        end
    end
end