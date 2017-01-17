initialization
initializeWithCust: aCustID Last: aLastNameString
	"set instance variables"

	id := aCustID.
	last := aLastNameString.
	cust := Application customers retrieveByID: id.
	origCust := cust copy.
	newCust := Customer
		newWithName: (CustomerName newWithFirst: cust name first Last: aLastNameString).
	self validate