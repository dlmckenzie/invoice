initialization
initializeWithID: aCustID
	"initialize myself"

	id := aCustID.
	cust := Application customers retrieveByID: id.
	self validate