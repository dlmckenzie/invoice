testing
testValidateInterface
	self
		assert: [ UpdateCustWithFirst new respondsTo: #validate ]
		description: 'UpdateCustWithFirst validate method does not exist'.
		self
		assert: [ (UpdateCustWithFirst newWithCust: (Customer newWithFirst: 'Joey' Last: 'Smith') First: 'Joe') validate
				isMemberOf: UpdateCustWithFirst ]
		description: 'method must answer self'