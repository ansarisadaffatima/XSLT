for $x in doc("Books.xml")/books/book
return if($x/@category="XML") then <XML>{upper-case($x/title)}</XML>
else <NONXML>{substring($x/title,1,4)}</NONXML>
