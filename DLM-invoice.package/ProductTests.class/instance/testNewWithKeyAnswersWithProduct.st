testing
testNewWithKeyAnswersWithProduct
	"test that method answers new instance of product"
	
	self assert: [ (Product newWithKey: 'PR01') isKindOf: Product ] 
		description: 'Method did not answer with Product' 
		
