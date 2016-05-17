testing
testRetrieveByLastNameRaisesErrorOnEmptySearchString
	"Test that empty/null search strings raise error"
	
	| customers |
	customers := Customers new.
	self should: [ customers retrieveByLastName: nil] raise: Error.
	self should: [ customers retrieveByLastName: ''] raise: Error.