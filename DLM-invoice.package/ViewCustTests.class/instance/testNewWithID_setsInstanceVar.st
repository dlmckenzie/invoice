testing
testNewWithID_setsInstanceVar
	"test that instance variable(s) gets set"

	| cmd id |
	id := 2.
	cmd := ViewCust newWithID: id.
	self assert: [ cmd id = id ] description: 'instance variable not set'