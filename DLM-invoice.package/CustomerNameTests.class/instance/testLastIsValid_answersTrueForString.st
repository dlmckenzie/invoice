testing - happy path
testLastIsValid_answersTrueForString
	"answers true if last is non-zero length string"

	self
		assert: [ (CustomerName newWithFirst: 'Joe' Last: 'Smith') lastIsValid ]
		description: 'nil last name should not have passed validation'