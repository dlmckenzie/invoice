testing
testRetrieveByKeyAnswersProductOrNil
	"test that this method answers either a product or nil"

	| products prod |
	prod := 'AA'.
	products := (Products new) addWithKey: prod.
	self assert: [ (products retrieveByKey: prod) isMemberOf: Product ] description: 'method did not answer with a product'.
	self deny: [ (products retrieveByKey: 'BB') isMemberOf: Product ] description: 'method did not answer with a product'