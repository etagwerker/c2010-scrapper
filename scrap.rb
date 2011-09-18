# encoding: utf-8

require 'gems'

logger = Logger.new('debug.log', 10, 1024000)

RESULTADOS_DEFINITIVOS_URL = 'http://www.censo2010.indec.gov.ar/resultadosdefinitivos.asp'
DEPTOS_URL = 'http://www.censo2010.indec.gov.ar/ajax_Definitivos_Dptos.asp'

agent = Mechanize.new

# 
# 
# puts "Scrapping #{RESULTADOS_DEFINITIVOS_URL}"
# 
# 
# page = agent.get(RESULTADOS_DEFINITIVOS_URL)
# 
# consulta_jurisdiccion = page.form('formuC')
# 
# logger.debug(page.to_s)
# 
# page = agent.submit(consulta_jurisdiccion, consulta_jurisdiccion.buttons.first)
# 
# puts "Search submitted"
# 
# pp page
# 
# puts "End"
