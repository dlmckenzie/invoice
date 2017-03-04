testing - interface
testBuildFailureMsgInterface
	"test method interface"

	self
		assert: [ SearchProdByDesc  new respondsTo: #buildFailureMsg ]
		description: 'SearchProdByDesc buildFailureMsg method does not exist'.
	self
		assert: [ (SearchProdByDesc  newWithDesc: 'D') buildFailureMsg isMemberOf: SearchProdByDesc  ]
		description: 'SearchProdByDesc buildFailureMsg method did not answer self'