testing - interface
testExecuteCmd_interface
	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') respondsTo: #executeCmd ]
		description: 'SearchProdByDesc executeCmd method not found'.
	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') executeCmd isMemberOf: SearchProdByDesc  ]
		description: 'method did not answer with self'