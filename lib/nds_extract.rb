$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
    nds = directors_database
    result = {}
    director_row = 0
    while director_row < nds.count do
        movies = 0
        gross_inner = 0
        while movies < nds[director_row][:movies].count do
            gross_inner += nds[director_row][:movies][movies][:worldwide_gross]
            movies += 1
        end
        gross_inner += 1
    end
    result[nds[director_row][:name]] = gross_inner
    director_row += 1
end