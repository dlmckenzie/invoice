testing - exceptions
testIsValid_raisesErrorWhenIsValidIsNil
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| param |
	param := CustIDParam newWithCustID: 2.
	self should: [ param isValid ] raise: Error description: 'a nil isValid should have raised error'