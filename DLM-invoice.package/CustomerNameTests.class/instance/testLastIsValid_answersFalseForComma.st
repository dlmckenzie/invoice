testing - exceptions
testLastIsValid_answersFalseForComma
	"test that error is raised when first name updated to nil"

	self
		deny: [ (CustomerName newWithFirst: 'Joe' Last: 'Smith,') lastIsValid ]
		description: 'last name with comma should not have passed validation'