testing - interface
testValidate_interface
	"test interface"

	| param |
	param := Parameter new.
	self assert: [ param respondsTo: #validate ] description: 'Parameter validate method does not exist'.
