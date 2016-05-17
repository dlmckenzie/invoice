testing
testMethodTestAddWithFirstLastThrowsExceptionOnNilLastNameRenamed
	"Renamed to testAddWithFirstLastRaisesErrorOnNilLastName"

	|customersTests|
	customersTests := CustomersTests new.
	self deny: [ customersTests respondsTo: #testAddWithFirstLastThrowsExceptionOnNilLastName ]
		description: 'testAddWithFirstLastThrowsExceptionOnNilLastName should no longer exist'.
	self assert: [ customersTests respondsTo: #testAddWithFirstLastRaisesErrorOnNilLastName ]
		description: 'testAddWithFirstLastRaisesErrorOnNilLastName should exist'.
			
