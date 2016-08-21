testing - customer
testViewProdAnswersApp
	"test that method answers App (self)"

	self
		assert: [ (App new start viewProd: 'A') isMemberOf: App ]
		description: 'Method did not answer with App'