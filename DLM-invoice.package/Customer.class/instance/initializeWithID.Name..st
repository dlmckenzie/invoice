instance initialization
initializeWithID: anID Name: aName
	"answers an initialized customer"

	id := anID.
	name := aName.
	invoices := self class invoices