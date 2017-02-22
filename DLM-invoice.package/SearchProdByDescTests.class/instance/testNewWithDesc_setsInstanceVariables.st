testing - happy path
testNewWithDesc_setsInstanceVariables
	"happy path - test that instance variables are being set"

	| searchString |
	searchString := 'product description'.
	self
		assert: [ (SearchProdByDesc newWithDesc: searchString) searchString = searchString ]
		description: 'search string not being set'