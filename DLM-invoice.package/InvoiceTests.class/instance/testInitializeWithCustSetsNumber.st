testing
testInitializeWithCustSetsNumber
	"test that invoice initialization sets the invoice number
	to the next available number"

	|cust invoice |
	Invoice initialize.
	cust := Customer newWithFirst: 'Joe' Last: 'Smith'.
	invoice := Invoice new.
	invoice initializeWithCust: cust.
	self assert: [ invoice number = 1 ] description: 'invoice number incorrect'. 
	cust := Customer newWithFirst: 'Sarah' Last: 'Jones'.
	invoice := Invoice new.
	invoice initializeWithCust: cust.
	self assert: [ invoice number = 2 ] description: 'invoice number incorrect'. 