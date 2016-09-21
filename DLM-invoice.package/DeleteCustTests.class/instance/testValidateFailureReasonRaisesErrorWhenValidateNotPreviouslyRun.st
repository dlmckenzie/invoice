testing
testValidateFailureReasonRaisesErrorWhenValidateNotPreviouslyRun
	| app cli cust custID cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app customers addCust: (Customer newWithFirst: 'Joe' Last: 'Smith').
	custID := cust id.
	cmd := DeleteCust newWithID: custID.
	self
		should: [ cmd validationFailureReason ]
		raise: Error
		description: 'error should have been raised stating validate has not yet been run'