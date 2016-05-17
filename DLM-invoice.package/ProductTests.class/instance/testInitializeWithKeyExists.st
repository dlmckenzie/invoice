testing
testInitializeWithKeyExists
	"method Product initializeWithKey exists"
	
	self assert: [ (Product new) respondsTo: #initializeWithKey: ]
	description: 'product method initializeWithKey: does not exist'


