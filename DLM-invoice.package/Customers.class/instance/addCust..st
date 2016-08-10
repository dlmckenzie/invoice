collection ops
addCust: aCustomer
	"add customer to myself"

	self at: aCustomer id put: aCustomer.
	^ aCustomer