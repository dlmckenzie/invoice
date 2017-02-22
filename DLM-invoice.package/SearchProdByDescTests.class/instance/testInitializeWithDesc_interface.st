testing - interface
testInitializeWithDesc_interface
	"test method interface"

	self
		assert: [ SearchProdByDesc new respondsTo: #initializeWithDesc: ]
		description: 'SearchProdByDesc initializeWithDesc does not exist'.
	self
		assert: [ (SearchProdByDesc newWithDesc: 'part') isMemberOf: SearchProdByDesc  ]
		description: 'SearchProdByDesc newWithDesc: did not answer self'