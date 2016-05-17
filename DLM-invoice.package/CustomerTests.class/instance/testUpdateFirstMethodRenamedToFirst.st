testing
testUpdateFirstMethodRenamedToFirst
	"test method updateFirst: was renamed to first:"
	
	|customer|
	customer := Customer new.
	self deny: [ customer respondsTo: #updateFirst: ]
			description: 'method Customer updateFirst: should not exist'.
	self assert: [ customer respondsTo: #first: ]
			description: 'method Customer first: should exist'

