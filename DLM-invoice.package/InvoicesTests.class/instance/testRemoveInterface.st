testing
testRemoveInterface
| result |
	self
		assert: [ Invoices new respondsTo: #remove: ]
		description: 'class method remove does not exist'.
	result := Invoices new addInvoice: Invoice new.
	self assert: [ result isMemberOf: Invoice ]
		description: 'method did not answer with self'