testing - interface
testValidateInterface
	"test method interface"

	self
		assert: [ SearchProdByDesc new respondsTo: #validate ]
		description: 'SearchProdByDescvalidate method does not exist'.
	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') isMemberOf: SearchProdByDesc ]
		description: 'SearchProdByDesc validate method does not exist' 