require 'gems'

puts "Scrapping Departamento IDs"

# page = agent.get("#{DEPTOS_URL}?d=#{id})

CSV.open("departamentos.csv", "wb") do |csv|

  CSV.foreach('data/provincias.csv') do |row|
    xml = Hpricot::XML(HTTParty.get("#{DEPTOS_URL}?d=#{row[0]}"))
  
    (xml/:option).each do |p|
       csv << [row[0], p.attributes['value'], p.innerHTML]
     end
  end
end

puts "Scrapped"