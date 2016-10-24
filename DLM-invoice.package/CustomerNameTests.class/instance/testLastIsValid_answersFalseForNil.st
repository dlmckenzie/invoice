testing - edge cases
testLastIsValid_answersFalseForNil
	"answers false if last is nil"

	self
		deny: [ (CustomerName newWithFirst: 'Joe' Last: nil) lastIsValid ]
		description: 'nil last name should not have passed validation'