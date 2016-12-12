testing - happy path
testInitializeWithKeyDesc_setsAttributes
	"test that method sets the command''s attributes"

	| cmd key desc |
	key := 'A10'.
	desc := 'Part A10'.
	cmd := UpdateProdWithDesc newWithProd: key Desc: desc.
	self assert: [ cmd key = key ] description: 'key instance variable not set'.
	self assert: [ cmd desc = desc ] description: 'desc instance variable not set'.