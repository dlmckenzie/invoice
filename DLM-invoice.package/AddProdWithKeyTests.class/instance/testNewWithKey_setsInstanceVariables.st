testing - happy path
testNewWithKey_setsInstanceVariables
	"happy path - test that instance variables are being set"

	| cmd key |
	key := 'A1'.
	cmd := AddProdWithKey newWithKey: key.
	self assert: [ cmd key = key ] description: 'key not being set'.
	