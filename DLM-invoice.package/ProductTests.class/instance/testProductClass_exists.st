testing - interface
testProductClass_exists
	"test if Product class exists"

	self assert: [ Smalltalk hasClassNamed: #Product ] description: 'Product class does not exist'
