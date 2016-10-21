testing - happy path
testNewWithLast_setsInstanceVariables
	"happy path - test that instance variables are being set"

	| searchString |
	searchString := 'Smith'.
	self
		assert: [ (SearchCustByLast newWithLast: searchString) searchString = searchString ]
		description: 'search string not being set'