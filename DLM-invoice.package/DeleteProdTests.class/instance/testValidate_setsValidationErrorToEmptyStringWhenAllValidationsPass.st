testing - happy path
testValidate_setsValidationErrorToEmptyStringWhenAllValidationsPass
	"test that validationError instance variable set to empty string when all valications pass"

	| app prod |
	app := App new start.
	DeleteProd initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	app products addProd: prod.
	self
		assert: [ (DeleteProd newWithKey: 'A10') validationError isEmpty ]
		description: 'validationFailureReason should be empty'