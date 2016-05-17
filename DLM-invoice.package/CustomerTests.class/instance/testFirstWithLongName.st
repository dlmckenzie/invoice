testing
testFirstWithLongName
	"test method handles long first name of over 50 char"

	| customer first|
	
	first := 'I had my last first changed to this really long sentence'.
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	customer first: first.
	self assert: [ customer first = first ] description: 'update didn''t handle long first name' 
