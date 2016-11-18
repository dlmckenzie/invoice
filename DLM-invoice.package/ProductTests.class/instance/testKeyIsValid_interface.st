testing - interface
testKeyIsValid_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #keyIsValid ]
		description: 'Product keyIsValid does not exist'.
	self
		assert: [ (Product newWithKey: 'A') validateKey keyIsValid isKindOf: Boolean ]
		description: 'Product keyIsValid does not answer boolean'