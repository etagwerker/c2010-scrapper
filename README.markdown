# Scraper del Censo 2010

Este código scrapea el sitio oficial del [Censo 2010 (Argentina)](http://bit.ly/nTVi4F) y genera archivos .sql

Por ahora solo genera poblacion.sql 

La idea es que en el futuro genere otros archivos .sql con otros aspectos del Censo 2010. 

## Requerimientos

* ruby 1.8.7

* default.gems

## Pasos

### Scrapear Sitio Oficial

Para correrlo: 

* ruby scrape.rb

Esto va a generar el directorio scraped y va a tirar todos los .xls ahí adentro. 

* ruby scrape_viviendas.rb

Esto va a generar el directorio scraped/Viviendas y va a tirar todos los .xls ahí adentro. 

* ruby scrape_poblacion.rb

Esto va a generar el directorio scraped/Poblacion y va a tirar todos los .xls ahí adentro. 

* ruby scrape_hogares.rb

Esto va a generar el directorio scraped/Hogares y va a tirar todos los .xls ahí adentro. 

### Procesar Archivos .xls

Este script depende de (scrape_poblacion.rb)

* ruby process\_poblacion\_spreadsheets.rb

Genera un archivo poblacion.sql con las siguientes columnas: PROVINCIA, DEPARTAMENTO, EDAD, VARONES\_COUNT, MUJERES\_COUNT

## Contribuciones

Para cualquier contribución: 

* Fork

* Commit

* Pull Request

Gracias! 

## License

Copyright (C) 2011 by Ernesto Tagwerker

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.