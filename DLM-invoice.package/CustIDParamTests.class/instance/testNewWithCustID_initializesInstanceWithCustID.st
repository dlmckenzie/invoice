testing
testNewWithCustID_initializesInstanceWithCustID
	"test interface"

	| id param |
	id := 2.
	param := CustIDParam newWithCustID: id.
	self assert: [ param id = id ] description: 'id not getting initialized'