testing
testAddProdWithKeyAnswersApp
	"test that method answers App (self)"

	self
		assert: [ (App new start addProdWithKey: 'A') isMemberOf: App ]
		description: 'Method did not answer with App'