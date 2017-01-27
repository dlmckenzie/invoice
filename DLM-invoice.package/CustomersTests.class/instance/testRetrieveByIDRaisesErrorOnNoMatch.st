testing
testRetrieveByIDRaisesErrorOnNoMatch
	"test that retrieveByID raises an error when matching key is not found"
		
	self should: [ Customers new retrieveByID: 1 ] raise: Error