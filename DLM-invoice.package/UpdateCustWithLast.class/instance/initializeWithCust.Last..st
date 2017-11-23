initialization
initializeWithCust: aCustID Last: aLastNameString
	"set instance variables"

	id := aCustID.
	
	(Application domain customers custExistsForID: id)
		ifTrue: [ cust := Application domain customers retrieveByID: id ].
	origCust := cust deepCopy.
	newCust := Customer newWithName: (CustomerName newWithFirst: cust name first Last: aLastNameString).
	self validate