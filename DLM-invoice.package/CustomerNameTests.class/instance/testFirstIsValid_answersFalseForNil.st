testing - edge cases
testFirstIsValid_answersFalseForNil
	"test that method answers false if first is nil"

	self
		deny: [ (CustomerName newWithFirst: nil Last: 'Smith') firstIsValid ]
		description: 'First name with nil value should have failed validation'