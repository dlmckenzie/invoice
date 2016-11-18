testing - interface
testDescriptionIsValid_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #descriptionIsValid ]
		description: 'Product descIsValid does not exist'.
	self
		assert: [ (Product newWithKey: 'A') validateDescription descriptionIsValid isKindOf: Boolean ]
		description: 'Product descIsValid does not answer boolean'