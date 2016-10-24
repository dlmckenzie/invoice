testing - edge cases
testLastIsValid_answersFalseForNumber
	"answers false if last is not a string (in this test its a number"

	self
		deny: [ (CustomerName newWithFirst: 'Joe' Last: 9) lastIsValid ]
		description: 'nil last name should not have passed validation'