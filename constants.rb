RESULTADOS_DEFINITIVOS_URL = 'http://www.censo2010.indec.gov.ar/ajax_Definitivos_Consulta.asp'
VIVIENDAS_ID = 1
HOGARES_ID = 2
POBLACION_ID = 3

UNIDADES  = {
  0 => "Todas",
  VIVIENDAS_ID => "Viviendas",
  HOGARES_ID => "Hogares",
  POBLACION_ID => "Poblacion"
}

LOGGER = Logger.new('debug.log', 10, 1024000)
AGENT = Mechanize.new
SCRAPED = {}