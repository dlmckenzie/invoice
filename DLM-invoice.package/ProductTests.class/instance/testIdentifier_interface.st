testing - interface
testIdentifier_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #identifier ]
		description: 'Product identifier method doesn''t exist'.
	self
		assert: [ (Product newWithKey: 'A') identifier isKindOf: String ]
		description: 'Product identifier should be answering String'