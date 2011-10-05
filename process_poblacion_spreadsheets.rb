# encoding: utf-8

require 'rubygems'
require 'spreadsheet'

CAPTURES_REGEX = /.*. Provincia de (.*), partido ([^.]*). (.*)/
POBLACION_REGEX = /Población total por sexo e índice de masculinidad, .*/

file = File.open('poblacion.sql', 'w')

puts "Generando SQL para información de Población"

Dir.glob('scraped/Poblacion/*.xls').each do |file_name|
  if file_name =~ /pcia(\d+)-depto(\d+)/
    provincia_id = $1
    depto_id = $2
  else
    puts "Hubo un problema con este archivo: #{file_name}"
    break
  end

  book = Spreadsheet.open file_name
  worksheet = book.worksheet 0
  first_cell = worksheet.row(0)[0]
  if first_cell =~ CAPTURES_REGEX
    provincia = $1
    depto = $2
    description = $3
  else
    puts "Salteando #{file_name}"
    next
  end
  
  puts "Generando SQL para #{provincia}: #{depto}"
  
  worksheet.each_with_index do |row, index|
    if row[0] =~ /^(\d+)$/
      file.puts "INSERT INTO POBLACION VALUES(#{provincia_id}, #{depto_id}, #{row[0]}, #{row[2].to_i}, #{row[3].to_i});"
    end
    
    if index > 150
      break
    end
  end
  
  puts "Generado!"

end

puts "SQL Generado: #{file.path}"

file.close

