testing - edge cases
testValidateUpdatesValidationFailureReasonWhenAnyValidationFails
	"test that validate updates validationFailureReason nil when any validation fails"

	| app cli cust cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Sam' Last: 'Barry').
	app customers addCust: cust.
	cmd := DeleteCust newWithID: -1.
	cmd validate.
	self
		deny: [ cmd validationError isNil ]
		description: 'validationFailureReason should contain failure reason'