collection ops
delete: aCustomer
	"delete customer"

	(aCustomer okToDelete)
		ifTrue: [ self removeKey: aCustomer id ]
		ifFalse: [ Error signal: 'cust has invoices attached' ]