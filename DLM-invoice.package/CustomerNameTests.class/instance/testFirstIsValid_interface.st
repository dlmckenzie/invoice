testing - interface
testFirstIsValid_interface
	"test existance of method"

	self
		assert: [ CustomerName new respondsTo: #firstIsValid ]
		description: 'method Customer firstIsValidForUpdate does not exist'.
	self
		assert: [ (CustomerName newWithFirst: 'Dave' Last: 'Smith') firstIsValid isKindOf: Boolean ]
		description: 'Method should have answered with a boolean'