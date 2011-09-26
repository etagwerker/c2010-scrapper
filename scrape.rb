# encoding: utf-8

require 'gems'
require 'constants'
require 'lib'

###
### Main
###

FileUtils.mkdir_p "scraped"

type = ARGV.first

if ARGV.count == 0
  scrape_viviendas
  scrape_hogares
  scrape_poblacion  
elsif ARGV.count == 1
  if ['Viviendas', 'Hogares', 'Poblacion'].include? type
    send("scrape_#{type.downcase}")
  else
    puts usage
  end
else
  puts usage
end
