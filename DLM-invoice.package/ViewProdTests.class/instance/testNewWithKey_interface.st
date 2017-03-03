testing - interface
testNewWithKey_interface
	"test method interface"

	self assert: [ ViewProd respondsTo: #newWithKey: ] description: 'ViewProd newWithKey: does not exist'.
	self
		assert: [ (ViewProd newWithKey: 'test') isMemberOf: ViewProd ]
		description: 'method did not answer new instance of class'