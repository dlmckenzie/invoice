testing - interface
testisValid_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #isValid ]
		description: 'CustomerName isValid method does not exist'. self
		assert: [ CustomerName new isValid isKindOf: Boolean ]
		description: 'method did not answer with a CustomerName'