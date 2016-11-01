testing - interface
testLastMethodExists
	"confirm method exists"

	| customerName |
	customerName := CustomerName new.
	self
		assert: [ customerName respondsTo: #last: ]
		description: 'method CustomerName last: does not exist'