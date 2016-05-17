testing
testRetrieveByLastNameRaisesErrorOnNumericSearchString
	"Test that empty/null search strings raise error"
	
	| customers |
	customers := Customers new.
	self should: [ customers retrieveByLastName: 1] raise: Error.
