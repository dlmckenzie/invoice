testing
testValidateSetsValidationFailureReasonNilWhenAllValidationsPass
	"test that validate keeps validationFailureReason nil when all valications pass"

	| app cli cust cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithFirst: 'Sam' Last: 'Barry'.
	app customers addCust: cust.
	cmd := ViewCust newWithID: cust id.
	cmd validate.
	self
		assert: [ cmd validationFailureReason isNil ]
		description: 'validationFailureReason should still be nil'
	