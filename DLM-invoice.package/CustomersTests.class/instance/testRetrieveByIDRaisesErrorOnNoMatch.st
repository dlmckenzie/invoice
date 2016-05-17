testing
testRetrieveByIDRaisesErrorOnNoMatch
	"test that error gets raised when no cust exists for id"

	self
		assert: [ (Customers new retrieveByID: 1) isNil ]
		description: 'Retrieving a non-existant customer should answer nil'