testing - happy path
testValidate_setsValidationErrorForInvalidCustID
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| app cli param custID |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	custID := 0.
	param := CustIDParam newWithCustID: custID.
	param validate.
	self
		assert: [ param validationError = 'Invalid customer id' ]
		description: 'param validationError incorrect'