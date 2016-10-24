testing
testInitializeWithCustInterface
	| invoice customer result |
	self
		assert: [ Invoice new respondsTo: #initializeWithCust: ]
		description: 'Invoice initializeWithCust: does not exist'.
	customer := Customer newWithName: (CustomerName newWithFirst: 'Ann' Last: 'Smith').
	invoice := Invoice new.
	result := invoice initializeWithCust: customer.
	self assert: [ result isMemberOf: Invoice ] description: 'Method did not answer with Invoice'