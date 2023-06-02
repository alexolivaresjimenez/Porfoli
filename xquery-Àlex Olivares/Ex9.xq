for $botiga in //botiga, $restaurant in //restaurant
where $botiga/../@nom = $restaurant/../@nom
return concat($botiga/@nom, " està en la mateixa zona que ", $restaurant/@nom)