testing
testFirstStandardCase
	"method should update customer's first name to that provided"
	
	| customer first|
	
	first := 'Joe'.
	customer := Customer newWithFirst: 'Joey' Last: 'Smith'.
	customer first: first.
	self assert: [ customer first = first ] description: 'update of first name failed' 




	
