testing
testInitializeWithIDFirstLastExits
	"test method exists"

	self assert: [ Customer new respondsTo: #initializeWithID:First:Last: ] description: 'testInitializeWithIDFirstLastExits does not exist' 