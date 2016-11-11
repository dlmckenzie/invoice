testing - happy path
testInitializeWithKey_initializesProduct
	"happy path - answers self with key field populated"

	| key prod |
	key := 'PR-01'.
	prod := Product new.
	prod initializeWithKey: key.
	self assert: [ prod key = key ] description: 'Method did not answer with identical product key'