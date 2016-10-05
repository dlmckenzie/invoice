testing - edge cases
testValidate_setsIsValidToFalseForInvalidCustID
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| app cli param |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	param := CustIDParam newWithCustID: 1.
	param validate.
	self deny: [ param isValid ] description: 'param should be valid but is marked invalid'