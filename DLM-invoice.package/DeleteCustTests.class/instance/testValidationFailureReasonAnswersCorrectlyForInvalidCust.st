testing - edge cases
testValidationFailureReasonAnswersCorrectlyForInvalidCust
	| app cli cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	"cust :="
	app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')).
	"custID := cust id."
	cmd := DeleteCust newWithID: 999.
	cmd validate.
	self
		assert: [ cmd validationError = 'Cust ID is invalid or does not exist.' ]
		description: 'incorrect error message'