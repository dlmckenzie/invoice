testing
testValidationFailureReasonAnswersCorrectlyForInvalidCust
	| app cli cust custID cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app customers addCust: (Customer newWithFirst: 'Joe' Last: 'Smith').
	custID := cust id.
	cmd := DeleteCust newWithID: 999.
	cmd validate.
	self
		assert: [ cmd validationFailureReason = 'Cust ID is invalid or does not exist.' ]
		description: 'incorrect error message'