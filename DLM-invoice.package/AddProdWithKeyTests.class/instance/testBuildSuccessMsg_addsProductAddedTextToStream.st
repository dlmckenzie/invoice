testing - happy path
testBuildSuccessMsg_addsProductAddedTextToStream
	"test"

	AddProdWithKey initializeWithApp: App new start.
	self
		assert: [ (AddProdWithKey newWithKey: 'A100') executeCmd stream contents includesSubstring: 'Product added' ]
		description: 'The text ''Product added'' was not displayed to user'