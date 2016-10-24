testing - edge cases
testFirstIsValid_answersFalseForNumber
	"test that method answers false if first is a number"

	self
		deny: [ (CustomerName newWithFirst: 8 Last: 'Smith') firstIsValid ]
		description: 'first name should not have passed identity validation'