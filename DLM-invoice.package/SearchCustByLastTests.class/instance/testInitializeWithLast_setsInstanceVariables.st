testing - happy path
testInitializeWithLast_setsInstanceVariables
	"happy path - test that instance variables are being set"

	| cmd searchString |
	searchString := 'Smith'.
	cmd := SearchCustByLast new.
	cmd initializeWithLast: searchString.
	self
		assert: [ cmd searchString = searchString ]
		description: 'search string not being set'