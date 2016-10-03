testing
testInitializeWithCustID_initializesInstanceWithCustID
	"test interface"

	| id param |
	id := 2.
	param := CustIDParam new.
	param initializeWithCustID: id.
	self assert: [ param id = id ] description: 'id not getting initialized'