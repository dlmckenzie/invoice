interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: aString Last: aString2.
	cmd executeCmd