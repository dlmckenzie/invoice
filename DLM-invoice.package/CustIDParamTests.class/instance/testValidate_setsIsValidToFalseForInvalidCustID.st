testing - edge case
testValidate_setsIsValidToFalseForInvalidCustID
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| app cli param cust custID |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	"cust := Customer newWithFirst: 'Dave' Last: 'Smith'.
	custID := cust id.
	app customers addCust: cust."
	param := CustIDParam newWithCustID: 1.
	param validate.
	self deny: [ param isValid ] description: 'param should be valid but is marked invalid'