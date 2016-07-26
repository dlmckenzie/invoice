testing
testRetrieveByKeyAnswersProductOrNil
	"test that this method answers either a product or nil"

	| products |
	products := Products new.
	products addProd: (Product newWithKey: 'AA').
	self assert: [ (products retrieveByKey: 'AA') isMemberOf: Product ] description: 'method did not answer with a product'.
	self deny: [ (products retrieveByKey: 'BB') isMemberOf: Product ] description: 'method did not answer with a product'