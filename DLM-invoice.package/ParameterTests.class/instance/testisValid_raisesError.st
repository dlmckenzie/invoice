testing - exceptions
testisValid_raisesError
	"test that isValid raises error when directly executed as its intended by be an abstract class"

	self
		should: [ Parameter new isValid ]
		raise: Error
		description: 'error should have been raised as this is an abstract class'