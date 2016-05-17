collection ops
addWithFirst: aString Last: aString2
	"add customer to myself"
	
	| cust id |
	cust := Customer newWithFirst:aString Last:aString2.
	id := Customers generateNextID.
	self at: id put: cust.
	^ id
	
	
	
	
	
