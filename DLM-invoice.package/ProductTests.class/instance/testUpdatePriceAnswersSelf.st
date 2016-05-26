testing
testUpdatePriceAnswersSelf
	"test that method answers self"

	self assert: [ (Product new updatePrice: 12.50) isMemberOf: Product ] description: 'Method did not answer with Product'