testing
testLastMethodExists
	"confirm method exists"

	|customer|
	customer := Customer new.
	self assert: [ customer respondsTo: #last: ]
			description: 'method Customer last: does not exist'
