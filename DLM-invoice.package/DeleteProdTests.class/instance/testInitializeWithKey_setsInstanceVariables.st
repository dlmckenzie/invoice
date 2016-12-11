testing - happy path
testInitializeWithKey_setsInstanceVariables
	"test that instance variables get set"
	
	| cmd key|
	key := 'A10'.
	cmd := DeleteProd newWithKey: key.
	self assert: [ cmd key = key ] description: 'instance variables not getting set' 