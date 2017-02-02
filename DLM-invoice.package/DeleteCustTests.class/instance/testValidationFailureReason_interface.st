testing - interface
testValidationFailureReason_interface
	"test method interface"

	| cmd |
	self
		assert: [ DeleteCust new respondsTo: #validationError ]
		description: 'DeleteCust validationFailureReason method does not exist'.
	cmd := DeleteCust newWithID: 1.
	cmd validate.
	self assert: [ cmd validationError isKindOf: String ] description: 'method must answer self'