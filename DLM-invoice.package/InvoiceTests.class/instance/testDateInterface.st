testing
testDateInterface
	| invoice cust|
	cust := Customer new.
	invoice := Invoice newWithCust: cust.
	self assert: [ invoice date isMemberOf: Date ] description: 'date not answering a Date'
	
	
	