testing
testLastStandardCase
	"method should update customer's last name to that provided"
	
	| customer last|
	
	last := 'Smith'.
	customer := Customer newWithFirst: 'Joey' Last: 'Jones'.
	customer last: last.
	self assert: [ customer last = last ] description: 'update of last name failed' 




	
