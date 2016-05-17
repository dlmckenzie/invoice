testing
testCorrectKeyExists
	"test method key: exist"

	self assert: [ (Product new) respondsTo: #correctKey: ]
	description: 'product method key: does not exist'