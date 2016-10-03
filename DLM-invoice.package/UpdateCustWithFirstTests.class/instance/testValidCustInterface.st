testing
testValidCustInterface
	self
		assert: [ UpdateCustWithFirst new respondsTo: #validCust ]
		description: 'UpdateCustWithFirst validCust method does not exist'.
	self
		assert: [ (UpdateCustWithFirst newWithCust: (Customer newWithFirst: 'Joey' Last: 'Smith' ) First: 'Joe')  validCust isKindOf: Boolean ]
		description: 'method must answer self'