testing - edge case
testIsValid_answersFalseWhenIsValidIsFalse
	"tests that for a cust id that equates to a customer,
	the isValid instance variable gets set to true"

	| param |

	param := CustIDParam newWithCustID: 2.
	param validate.
	self deny: [ param isValid ] description: 'param should be valid but is marked invalid'