testing - interface
testValidatePrice_interface
	"test method interface"

	self assert: [ Product new respondsTo: #validatePrice ] description: 'method doesn''t exist'.
	self assert: [ Product new validatePrice isMemberOf: Product ] description: 'method did not answer Product'
	