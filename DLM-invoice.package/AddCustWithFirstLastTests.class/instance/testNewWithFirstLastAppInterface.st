testing
testNewWithFirstLastAppInterface
	"test method interface"

	self
		assert: [ AddCustWithFirstLast respondsTo: #newWithFirst:Last:App: ]
		description: 'AddCustWithFirstLast newWithFirstLast method does not exist'.
	self
		assert: [ (AddCustWithFirstLast newWithFirst: 'Sue' Last: 'Smith' App: nil) isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer with an AddCustWithFirstLast command'