testing - happy path
testNewWithIDSetsInstanceVariables
	"happy path - test that instance variables are being set"

	| id cmd |
	id := 2.
	cmd := DeleteCust newWithID: id.
	self assert: [ cmd id = id ] description: 'cust id not being set'