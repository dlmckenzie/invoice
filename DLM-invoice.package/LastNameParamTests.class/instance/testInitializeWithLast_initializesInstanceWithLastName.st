testing - happy path
testInitializeWithLast_initializesInstanceWithLastName
	"test happy path"

	| last param |
	last := 'Smith'.
	param := LastNameParam new.
	param initializeWithLast: last.
	self assert: [ param last = last ] description: 'last name not getting initialized'