testing
testAddProdWithKeyDescPriceAnswersApp
	"test that method answers App (self)"

	self
		assert: [ (App new start addProdWithKey: 'A' Desc: 'Part A' Price: 12.00) isMemberOf: App ]
		description: 'Method did not answer with App'