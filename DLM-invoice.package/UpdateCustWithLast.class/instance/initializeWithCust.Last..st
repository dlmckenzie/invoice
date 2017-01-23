initialization
initializeWithCust: aCustID Last: aLastNameString
	"set instance variables"

	id := aCustID.
	cust := Application customers retrieveByID: id.
	origCust := cust deepCopy.
	newCust := Customer
		newWithName: (CustomerName newWithFirst: cust name first Last: aLastNameString).
	self validate