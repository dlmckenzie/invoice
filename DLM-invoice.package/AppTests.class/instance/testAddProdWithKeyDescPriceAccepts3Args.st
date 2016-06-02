testing
testAddProdWithKeyDescPriceAccepts3Args
	"test that method has 3 arguments"

	self
		assert: [ (App >> #addProdWithKey:Desc:Price:) argumentNames size = 3 ]
		description: 'method defined with incorrect number of arguments'