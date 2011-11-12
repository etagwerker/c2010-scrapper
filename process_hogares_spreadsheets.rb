# encoding: utf-8

require 'rubygems'
require 'spreadsheet'
require 'table_constants'

file = File.open('hogares.sql', 'w')
[TIPOS_VIVIENDA_TABLE_SQL, TIPOS_COMBUSTIBLE_TABLE_SQL, 
TIPO_COMBUSTIBLE_X_TIPO_VIVIENDA_SQL].each { |table_cons| file.puts table_cons }

START_ROW, END_ROW = 8, 14
START_COL, END_COL = 1, 8

puts "Generando SQL para información de Hogares"

Dir.glob('scraped/Hogares/*-Hogares-2.xls').each do |file_name|
  if file_name =~ /pcia(\d+)/
    provincia_id = $1
  else
    puts "Hubo un problema con este archivo: #{file_name}"
    break
  end
  
  book = Spreadsheet.open(file_name)
  worksheet = book.worksheet(0)
  
  pcia = worksheet.row(0)[0] =~ /Provincia de ([^\.]+)/ ? $1 : 'Ciudad Autónoma de Buenos Aires'
  puts "Generando SQL para #{pcia}"
  
  (START_ROW..END_ROW).each do |row_idx|
    row = worksheet.row(row_idx)
    
    (START_COL..END_COL).each do |tipo_vivienda_id|
      file.puts <<SQL
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(#{row_idx-7}, #{tipo_vivienda_id}, #{row[tipo_vivienda_id+1].to_i}, #{provincia_id});
SQL
    end
  end
  
  puts "Generado!"
end

puts "SQL Generado: #{file.path}"
file.close

