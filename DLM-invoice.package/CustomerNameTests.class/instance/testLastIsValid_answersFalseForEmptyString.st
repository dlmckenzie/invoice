testing - edge cases
testLastIsValid_answersFalseForEmptyString
	"answers false if last is empty string"

	self
		deny: [ (CustomerName newWithFirst: 'Joe' Last: '') lastIsValid ]
		description: 'nil last name should not have passed validation'