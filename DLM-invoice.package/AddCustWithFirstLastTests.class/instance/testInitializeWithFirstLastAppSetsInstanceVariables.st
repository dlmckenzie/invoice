testing
testInitializeWithFirstLastAppSetsInstanceVariables
	"happy path - test that instance variables are being set"

	| cmd first last |
	cmd := AddCustWithFirstLast new.
	first := 'Joe'.
	last := 'Smith'.
	cmd initializeWithFirst: first Last: last.
	self assert: [ cmd first = first ] description: 'first name not being set'.
	self assert: [ cmd last = last ] description: 'last name not being set'