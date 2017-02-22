testing - interface
testValidateSearchStringInterface
	"test method interface"

	self
		assert: [ SearchProdByDesc new respondsTo: #validateSearchString ]
		description: 'SearchProdByDesc validateSearchString method does not exist'.
	self
		assert: [ (SearchProdByDesc newWithDesc: 'test')validateSearchString isMemberOf: SearchProdByDesc ]
		description: 'SearchProdByDesc validateSearchString method does not exist'