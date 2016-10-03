testing
testInitializeWithCustID_interface
	"test method's interface"

	self assert: [ CustIDParam new respondsTo: #initializeWithCustID: ] description: 'method not recognzied'.
	self 
		assert: [ (CustIDParam new initializeWithCustID: 2) isMemberOf: CustIDParam  ]
		description: 'method not answering with instance of self'