testing - edge cases
testLastIsValid_answersTrueForLongName
	"test method handles long last name of over 50 char"
	
self
		assert: [ (CustomerName newWithFirst: 'Joe' Last: 'I had my last name changed to this really long sentence') lastIsValid ]
		description: 'nil last name should not have passed validation'