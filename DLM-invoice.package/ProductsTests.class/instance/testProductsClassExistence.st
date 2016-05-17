testing
testProductsClassExistence
	"test if Product class exists"

	self assert: [ Smalltalk hasClassNamed: #Products ] description: 'Products class does not exist'