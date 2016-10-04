testing - interface
testIsValid_interface
	"test interface"

	| param |
	param := Parameter new.
	self
		assert: [ param respondsTo: #isValid ]
		description: 'Parameter isValid method does not exist'