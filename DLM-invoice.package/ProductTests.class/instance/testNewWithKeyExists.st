testing
testNewWithKeyExists
	"method Product newWithKey exists"
	
	self assert: [ Product respondsTo: #newWithKey: ]
	description: 'product method newWithKey: does not exist'


