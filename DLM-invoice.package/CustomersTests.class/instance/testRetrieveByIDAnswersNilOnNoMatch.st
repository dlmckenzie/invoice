testing
testRetrieveByIDAnswersNilOnNoMatch
	"test that retrieveByID ansers nil when matching key is not found"

	self
		assert: [ (Customers new retrieveByID: 1) isNil ]
		description: 'Retrieving a non-existant customer should answer nil'