testing
testUpdateCustWithFirstAccepts2Args
	"test number of arguments"

	self
		assert: [ (App >> #updateCust:WithFirst:) argumentNames size = 2 ]
		description: 'method defined with incorrect number of arguments'