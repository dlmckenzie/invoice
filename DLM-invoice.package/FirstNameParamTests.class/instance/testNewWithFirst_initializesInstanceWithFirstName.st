testing - happy path
testNewWithFirst_initializesInstanceWithFirstName
	"test happy path"

	| first param |
	first := 'Joe'.
	param := FirstNameParam newWithFirst: 'Joe'.
	self assert: [ param first = first ] description: 'first name not getting initialized'