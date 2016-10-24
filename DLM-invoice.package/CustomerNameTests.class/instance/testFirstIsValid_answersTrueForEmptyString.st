testing - edge cases
testFirstIsValid_answersTrueForEmptyString
	"answers true if first is non-zero length string"

	self
		assert: [ (CustomerName newWithFirst: '' Last: 'Smith') firstIsValid ]
		description: 'empty first name should have passed identity validation'