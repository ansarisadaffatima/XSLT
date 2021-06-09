for $x in doc("Passengers.xml")/passengers/passenger
where  $x/class="Business"
order by $x/firstname
return $x