testing
testInitializeWithIDSetsInstanceVariables
	"happy path - test that instance variables are being set"

	| id cmd |
	id := 2.
	cmd := DeleteCust new.
	cmd initializeWithID: id.
	self assert: [ cmd id = id ] description: 'cust id not being set'