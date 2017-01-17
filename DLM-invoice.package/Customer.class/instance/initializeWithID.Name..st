initialization
initializeWithID: anID Name: aCustomerName
	"answers an initialized customer"

	id := anID.
	name := aCustomerName.
	invoices := self class invoices.
	self validate.