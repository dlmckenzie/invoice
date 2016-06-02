testing
testAddProdWithKeyAccepts1Arg
	"test that method has 2 arguments"

	self
		assert: [ (App >> #addProdWithKey:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of arguments'