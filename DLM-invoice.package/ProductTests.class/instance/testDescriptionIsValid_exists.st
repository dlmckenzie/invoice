testing - interface
testDescriptionIsValid_exists
	"test method exists"

	self
		assert: [ Product respondsTo: #descriptionIsValid: ]
		description: 'method does not exist'.
	self
		deny: [ Product new respondsTo: #descriptionIsValid: ]
		description: 'method should only exist as class method'