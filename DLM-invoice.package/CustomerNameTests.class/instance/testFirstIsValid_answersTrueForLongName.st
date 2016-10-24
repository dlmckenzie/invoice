testing - edge cases
testFirstIsValid_answersTrueForLongName
	"test method handles long first name of over 50 char"

	| name |
	
	name := CustomerName newWithFirst: 'I had my first name changed to this really long sentence' Last: 'Smith'.
	self assert: [ name firstIsValid ] description: 'long name rejected by validation' 
