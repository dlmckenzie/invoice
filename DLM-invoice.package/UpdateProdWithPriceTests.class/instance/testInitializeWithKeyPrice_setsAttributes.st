testing - happy path
testInitializeWithKeyPrice_setsAttributes
	"test that method sets the command''s attributes"

	| cmd key price |
	key := 'A10'.
	price := 40.
	cmd := UpdateProdWithPrice newWithKey: key Price: price.
	self assert: [ cmd key = key ] description: 'key instance variable not set'.
	self assert: [ cmd price = price ] description: 'price instance variable not set'.