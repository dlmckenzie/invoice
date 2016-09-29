testing
testInitializeWithIDSetsInstanceVar
	"test that instance variable(s) gets set"
	
	| cmd id|
	id := 2.
	cmd := ViewCust new.
	cmd initializeWithID: id.
	self
		assert: [ cmd id = id ]
		description: 'instance variable not set' 
