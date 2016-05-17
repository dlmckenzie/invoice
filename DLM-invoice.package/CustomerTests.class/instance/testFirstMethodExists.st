testing
testFirstMethodExists
	"confirm method exists"

	|customer|
	customer := Customer new.
	self assert: [ customer respondsTo: #first: ]
			description: 'method Customer updateFirst: does not exist'
