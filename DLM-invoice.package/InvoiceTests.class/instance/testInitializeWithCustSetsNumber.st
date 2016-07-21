testing
testInitializeWithCustSetsNumber

	|cust invoice |
	Invoice initialize.
	cust := Customer newWithFirst: 'Joe' Last: 'Smith'.
	invoice := Invoice new.
	invoice initializeWithCust: cust.
	self assert: [ invoice number = 1 ] description: 'invoice number incorrect' 