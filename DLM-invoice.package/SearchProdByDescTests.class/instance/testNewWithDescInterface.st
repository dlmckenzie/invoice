testing - interface
testNewWithDescInterface
	"test method interface"

	self
		assert: [ SearchProdByDesc respondsTo: #newWithDesc: ]
		description: 'SearchProdByDesc newWithDesc method does not exist'.
	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') isMemberOf: SearchProdByDesc   ]
		description: 'method not answering self'