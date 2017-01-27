initialization
initializeWithID: aCustID
	"initialize myself"

	id := aCustID.
	(Application customers custExistsForID: id) ifTrue: [ cust := Application customers retrieveByID: id ].
	self validate