collection ops
addWithFirst: aString Last: aString2
	"add customer to myself"

	| cust |
	cust := Customer newWithFirst: aString Last: aString2.
	self at: cust id put: cust.
	^ cust id