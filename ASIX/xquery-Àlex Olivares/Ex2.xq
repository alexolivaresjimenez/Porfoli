for $a in //atraccio
where $a/intensitat = "Forta" and $a/edatMinima > 12 
and $a/edatMinima/@adult = "no"
return $a/@nom
