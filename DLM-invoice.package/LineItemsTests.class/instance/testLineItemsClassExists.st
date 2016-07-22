as yet unclassified
testLineItemsClassExists
	"test if class exists"

	self
		assert: [ Smalltalk hasClassNamed: #LineItems ]
		description: 'LineItems class does not exist'