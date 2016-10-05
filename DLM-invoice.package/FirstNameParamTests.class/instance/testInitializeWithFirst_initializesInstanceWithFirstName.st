testing - happy path
testInitializeWithFirst_initializesInstanceWithFirstName
	"test happy path"

	| first param |
	first := 'Joe'.
	param := FirstNameParam new.
	param initializeWithFirst: first.
	self assert: [ param first = first ] description: 'first name not getting initialized'