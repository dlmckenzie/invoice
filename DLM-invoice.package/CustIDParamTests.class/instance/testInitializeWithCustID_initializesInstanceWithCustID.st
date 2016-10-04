testing - happy path
testInitializeWithCustID_initializesInstanceWithCustID
	"test happy path"

	| id param |
	id := 2.
	param := CustIDParam new.
	param initializeWithCustID: id.
	self assert: [ param id = id ] description: 'id not getting initialized'