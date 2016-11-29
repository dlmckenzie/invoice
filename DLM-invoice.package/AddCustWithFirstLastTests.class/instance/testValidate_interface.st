testing - interface
testValidate_interface
	"test method interface"

	self
		assert: [ AddCustWithFirstLast new respondsTo: #validate ]
		description: 'AddCustWithFirstLast validate method does not exist'.
	self
		assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith')  validate isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer self'