testing
testInitializeWithCustSetsCust
	"test that upon initialization the cust is saved to the invoice"

	| cust invoice retrievedCust |
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith').
	invoice := Invoice new.
	invoice initializeWithCust: cust.
	retrievedCust := invoice customer.
	self assert: [ retrievedCust name first = 'Joe' ] description: 'cust not saved to invoice'