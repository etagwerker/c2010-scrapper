###
### Methods
###

def usage
  "
  Censo 2010 Scrape Tool: Usage
  
  ruby scrape.rb [option]
  
  * option: Viviendas, Poblacion, Hogares
  "
end

def scrape_viviendas
  scrape(VIVIENDAS_ID)
end

def scrape_hogares
  scrape(HOGARES_ID)
end

def scrape_poblacion
  scrape(POBLACION_ID)
end

def scrape_xls(base_path, provincia_id, departamento_id, departamento_name, unidad_id, unidad_desc)

  puts "Scraping... Provincia: #{provincia_id}. Departamento: #{departamento_name}. Unidad: #{unidad_desc}"
  xml = Hpricot::XML(HTTParty.get("#{RESULTADOS_DEFINITIVOS_URL}?p=#{provincia_id}&d=#{departamento_id}&t=#{unidad_id}"))
  (xml/:a).each_with_index do |link, index|
    uri = link.attributes['href']
    if link.innerHTML == "XLS"
      unless SCRAPED[uri]
        
        SCRAPED[uri] = true
        file_path = "#{base_path}/pcia#{provincia_id}-depto#{departamento_id}-#{unidad_desc}-#{index / 2}.xls"

        begin
          puts "Downloading: #{file_path}"    
          if Pathname.new(file_path).exist?
            puts "Already downloaded: #{file_path}"
          else
            AGENT.get("http://www.censo2010.indec.gov.ar/#{uri}").save_as file_path              
          end

        rescue Exception => e
          puts "Error downloading: http://www.censo2010.indec.gov.ar/#{uri} to scraped/pcia#{provincia_id}-depto#{departamento_id}-#{unidad_desc}-#{index}.xls"
          puts e.message
        end
      end
    end
  end if (xml/:a)
  puts "Scraped!"
  
end

def scrape(unidad_id)

  unidad_desc = UNIDADES[unidad_id]
  puts "Scraping #{unidad_desc}... "
  base_path = "scraped/#{unidad_desc}"  

  FileUtils.mkdir_p base_path
  
  CSV.foreach('data/departamentos.csv') do |row|
    provincia_id = row[0]
    departamento_id = row[1]
    departamento_name = row[2]    
    
    scrape_xls(base_path, provincia_id, departamento_id, departamento_name, unidad_id, unidad_desc)
  end
end
