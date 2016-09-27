testing
testValidateInterface
	self
		assert: [ SearchCustByLast new respondsTo: #validate ]
		description: 'SearchCustByLast validate method does not exist'.
	self
		assert: [ (SearchCustByLast newWithLast: 'Smith') validate isMemberOf: SearchCustByLast ]
		description: 'method must answer self'