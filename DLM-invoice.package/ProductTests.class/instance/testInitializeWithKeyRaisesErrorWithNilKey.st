testing
testInitializeWithKeyRaisesErrorWithNilKey
	"should raise error on nil key"
	
	self should: [ (Product new) initializeWithKey: ''.] raise: Error.