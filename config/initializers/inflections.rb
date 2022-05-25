# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, "\\1en"
#   inflect.singular /^(ox)en/i, "\\1"
#   inflect.irregular "person", "people"
#   inflect.uncountable %w( fish sheep )
  inflect.irregular "actividad", "actividades"
  inflect.irregular "actividad_tipo", "actividades_tipo"
  inflect.irregular "direccion", "direcciones"
  inflect.irregular "especialidad", "especialidades"
  inflect.irregular "municipio", "municipios"
  inflect.irregular "estado", "estados"
  inflect.irregular "colonia", "colonias"
  
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end
