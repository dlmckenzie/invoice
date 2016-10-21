testing - interface
testValidSearchStringInterface
	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	self
		assert: [ cmd respondsTo: #validSearchString ]
		description: 'SearchCustByLast validSearchString method does not exist'