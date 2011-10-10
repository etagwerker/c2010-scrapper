# encoding: utf-8

require 'rubygems'
require 'spreadsheet'
require 'table_constants'

PROVINCIA_CAPTURES_REGEX = /.*. Provincia del? (.*), (departamento|partido) ([^.]*). (.*)/
CAPITAL_CAPTURES_REGEX = /.*. (Ciudad Autónoma de Buenos Aires), (Comuna) (\d+). (.*)/
POBLACION_REGEX = /Población total por sexo e índice de masculinidad, .*/

file = File.open('poblacion.sql', 'w')
file.puts DEPARTAMENTOS_TABLE_SQL

puts "Generando SQL para información de Población"

def escape_characters_in_string(string)
  pattern = /(\'|\"|\.|\*|\/|\-|\\)/
  string.gsub(pattern){|match|"\\"  + match} # <-- Trying to take the currently found match and add a \ before it I have no idea how to do that).
end

Dir.glob('scraped/Poblacion/*.xls').each do |file_name|
  if file_name =~ /pcia(\d+)-depto(\d+)/
    provincia_id = $1
    depto_id = $2
  else
    puts "Hubo un problema con este archivo: #{file_name}"
    break
  end
  
  if depto_id != "000"
    next unless provincia_id == "06" # Exceptuando a la Provincia de Buenos Aires
  end

  book = Spreadsheet.open file_name
  worksheet = book.worksheet 0
  first_cell = worksheet.row(0)[0]
  if first_cell =~ PROVINCIA_CAPTURES_REGEX || first_cell =~ CAPITAL_CAPTURES_REGEX
    provincia = $1
    tipo_de_departamento = $2
    depto = $3
    description = $4
  else
    puts "Salteando #{file_name}"
    puts "First cell: "
    puts first_cell
    next
  end
  
  puts "Generando SQL para #{provincia}: #{depto}"
  
  worksheet.each_with_index do |row, index|
    if row[0] =~ /^(\d+)( y más)?$/
      file.puts "INSERT INTO departamentos (provincia, nombre, edad, total_varones, total_mujeres) VALUES('#{provincia}', $$#{depto}$$, #{row[0].to_i}, #{row[2].to_i}, #{row[3].to_i});"
    end
    
    if index > 150
      break
    end
  end
  
  puts "Generado!"

end

puts "SQL Generado: #{file.path}"

file.close

