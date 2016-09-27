testing
testValidSearchStringAnswersFalseForNilSearchString
	"comment"

	| cmd searchString |
	searchString := nil.
	cmd := SearchCustByLast newWithLast: searchString.
	self
		deny: [ cmd validSearchString ]
		description: 'SearchCustByLast validSearchString should have answered true'