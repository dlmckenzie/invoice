testing
testDescriptionExists
	"test method exists"

	self assert: [ (Product new) respondsTo: #description ]
	description: 'method does not exist'