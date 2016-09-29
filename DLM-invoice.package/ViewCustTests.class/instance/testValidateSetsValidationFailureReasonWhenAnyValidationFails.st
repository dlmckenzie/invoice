testing
testValidateSetsValidationFailureReasonWhenAnyValidationFails
	"test that validate updates validationFailureReason nil when any validation fails"

	| app cli cust cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithFirst: 'Sam' Last: 'Barry'.
	app customers addCust: cust.
	cmd := ViewCust newWithID: -1.
	cmd validate.
	self
		deny: [ cmd validationFailureReason isNil ]
		description: 'validationFailureReason should contain failure reason'