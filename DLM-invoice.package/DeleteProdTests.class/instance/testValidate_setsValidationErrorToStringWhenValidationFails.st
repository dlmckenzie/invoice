testing - edge cases
testValidate_setsValidationErrorToStringWhenValidationFails
	"teset validate sets valication error to something when validation fails"

	| app |
	app := App new start.
	DeleteProd initializeWithApp: app.

	self
		assert: [ (DeleteProd newWithKey: 'A10') validationError isNotEmpty ]
		description: 'validationFailureReason should have text'