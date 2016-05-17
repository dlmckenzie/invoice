as yet unclassified
testUpdateCustWithLastAccepts2Args
	"test number of arguments"

	self
		assert: [ (App >> #updateCust:WithLast:) argumentNames size = 2 ]
		description: 'method defined with incorrect number of arguments'