testing
testValidationFailureReasonAnwersNilForValidCmd
	| app cli cust custID cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')).
	custID := cust id.
	cmd := DeleteCust newWithID: custID.
	cmd validate.
	self
		assert: [ cmd validationFailureReason isNil ]
		description: 'validationFailureReason should be nil'