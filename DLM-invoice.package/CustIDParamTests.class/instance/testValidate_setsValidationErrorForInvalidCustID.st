testing - happy path
testValidate_setsValidationErrorForInvalidCustID
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| app cli param cust custID |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	custID := 0.
	"cust := Customer newWithFirst: 'Dave' Last: 'Smith'.
	custID := cust id.
	app customers addCust: cust."
	param := CustIDParam newWithCustID: custID.
	param validate.
	self
		assert: [ param validationError = 'Invalid customer id' ]
		description: 'param should be valid but is marked invalid'