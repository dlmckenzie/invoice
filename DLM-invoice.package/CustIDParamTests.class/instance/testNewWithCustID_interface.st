testing
testNewWithCustID_interface
	"test interface"
	
	self
		assert: [ CustIDParam respondsTo: #newWithCustID: ]
		description: 'class method CustIDParam newWithCustID: does not exist'.
	self
		assert: [ ( CustIDParam newWithCustID: 1) isMemberOf: CustIDParam  ]
		description: 'method did not answer with instance of self'
		
	