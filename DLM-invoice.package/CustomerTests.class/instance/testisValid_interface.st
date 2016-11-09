testing - interface
testisValid_interface
	"test method interface"

	self
		assert: [ Customer new respondsTo: #isValid ]
		description: 'Customer isValid method does not exist'.
	self
		assert: [ (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith' )) isValid isKindOf: Boolean ]
		description: 'method did not answer with a boolean'