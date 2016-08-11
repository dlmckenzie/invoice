collection ops
delete: aCustomer
	"delete customer"

	(self okToDeleteCust: aCustomer)
		ifTrue: [ self removeKey: aCustomer id ]
		ifFalse: [ Error signal: 'cust has invoices attached' ]