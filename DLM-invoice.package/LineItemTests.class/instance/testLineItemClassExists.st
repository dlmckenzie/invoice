testing
testLineItemClassExists
	"test if class exists"

	self
		assert: [ Smalltalk hasClassNamed: #LineItem ]
		description: 'LineItem class does not exist'