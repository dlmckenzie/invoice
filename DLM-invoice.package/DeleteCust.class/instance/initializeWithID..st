initialization
initializeWithID: aCustID
	"initialize myself"

	id := aCustID.
	(Application domain customers custExistsForID: id) ifTrue: [ cust := Application domain customers retrieveByID: id ].
	self validate