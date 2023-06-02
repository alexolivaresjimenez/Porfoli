for $a in //atraccio
where $a/edatMinima <= 10 
return concat("Nom atracció: ",$a/@nom)