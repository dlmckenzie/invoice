testing - edge cases
testValidSearchString_answersFalseForEmptySearchString
	"comment"

	| cmd |
	cmd := SearchCustByLast newWithLast: ''.
	self
		deny: [ cmd validSearchString ]
		description: 'SearchCustByLast validSearchString should have answered true'