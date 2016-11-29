testing - happy path
testInitializeWithKey_setsInstanceVariables

	| key cmd |
	cmd := AddProdWithKey new.
	key := 'A10'.
	cmd initializeWithKey: key.
	self assert: [ cmd key = key ] description: 'key not being set' 
	