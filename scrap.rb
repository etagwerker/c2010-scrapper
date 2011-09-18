# encoding: utf-8

require 'gems'

logger = Logger.new('debug.log', 10, 1024000)

RESULTADOS_DEFINITIVOS_URL = 'http://www.censo2010.indec.gov.ar/ajax_Definitivos_Consulta.asp'

agent = Mechanize.new
scraped = {}

unidades = {
  0 => "Todas",
  1 => "Viviendas",
  2 => "Hogares",
  3 => "Población"
}

FileUtils.mkdir_p "scraped"

puts "Starting... "
CSV.foreach('data/departamentos.csv') do |row|
  provincia_id = row[0]
  departamento_id = row[1]
  unidades.keys.each do |unidad|
    puts "Scraping #{RESULTADOS_DEFINITIVOS_URL}?p=#{provincia_id}&d=#{departamento_id}&t=#{unidad}"
    xml = Hpricot::XML(HTTParty.get("#{RESULTADOS_DEFINITIVOS_URL}?p=#{provincia_id}&d=#{departamento_id}&t=#{unidad}"))
    (xml/:a).each_with_index do |link, index|
      uri = link.attributes['href']
      if link.innerHTML == "XLS"
        unless scraped[uri]
          scraped[uri] = true
          puts "Downloading http://www.censo2010.indec.gov.ar/#{uri}"
          begin
            agent.get("http://www.censo2010.indec.gov.ar/#{uri}").save_as "scraped/pcia#{provincia_id}-depto#{departamento_id}-#{unidades[unidad]}-#{index}.xls"
          rescue Error => e
            puts "Error downloading: http://www.censo2010.indec.gov.ar/#{uri} to scraped/pcia#{provincia_id}-depto#{departamento_id}-#{unidades[unidad]}-#{index}.xls"
            puts e.message
          end
          puts "Downloaded!"
        end
      end
    end
    puts "Scraped!"
  end
end

puts "Finished! "