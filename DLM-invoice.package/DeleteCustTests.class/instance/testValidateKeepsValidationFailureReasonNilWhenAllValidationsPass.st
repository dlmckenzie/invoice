testing - happy path
testValidateKeepsValidationFailureReasonNilWhenAllValidationsPass
	"test that validate keeps validationFailureReason nil when all valications pass"

	| app cli cust cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Sam' Last: 'Barry').
	app domain customers addCust: cust.
	cmd := DeleteCust newWithID: cust id.
	cmd validate.
	self
		assert: [ cmd validationError isNil ]
		description: 'validationFailureReason should still be nil'