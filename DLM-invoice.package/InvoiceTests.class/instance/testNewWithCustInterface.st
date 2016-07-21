testing
testNewWithCustInterface
	"test method interface"

	self assert: [ Invoice respondsTo: #newWithCust: ] description: 'class method newWithCust does not exist'.
	self
		assert: [ (Invoice newWithCust: (Customer newWithFirst: 'Joe' Last: 'Smith')) isMemberOf: Invoice ]
		description: 'Method did not answer with self' 