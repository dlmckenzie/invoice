testing
testLastWithLongName
	"test method handles long last name of over 50 char"

	| customer last|
	
	last := 'I had my last name changed to this really long sentence'.
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	customer last: last.
	self assert: [ customer last = last ] description: 'update didn''t handle long last name' 
