testing - happy path
testNewWithCustID_initializesInstanceWithCustID
	"test happy path"

	| id param |
	id := 2.
	param := CustIDParam newWithCustID: id.
	self assert: [ param id = id ] description: 'id not getting initialized'