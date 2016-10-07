testing - happy path
testNewWithLast_initializesInstanceWithLastName
	"test happy path"

	| last param |
	last := 'Smith'.
	param := LastNameParam newWithLast: last.
	self assert: [ param last = last ] description: 'last name not getting initialized'