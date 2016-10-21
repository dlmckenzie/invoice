testing - interface
testNewWithLastInterface
	self
		assert: [ SearchCustByLast respondsTo: #newWithLast: ]
		description: 'SearchCustByLast newWith: method does not exist'.
	self
		assert: [ (SearchCustByLast  newWithLast: 'Smith')
				isMemberOf: SearchCustByLast  ]
		description:
			'method did not answer with a SearchCustByLast command object'