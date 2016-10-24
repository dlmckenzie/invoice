testing - edge cases
testFirstIsValid_answersFalseIfContainsComma
	"test that method answers false if first contains comma"

	self
		deny: [ (CustomerName newWithFirst: 'Bob,' Last: 'Smith') firstIsValid ]
		description: 'first name should not have passed identity validation'