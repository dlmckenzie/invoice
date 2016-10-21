testing - happy path
testValidSearchString_answersTrueForValidString
	"comment"
	
	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	self
		assert: [cmd validSearchString] 	
		description: 'SearchCustByLast validSearchString should have answered true'