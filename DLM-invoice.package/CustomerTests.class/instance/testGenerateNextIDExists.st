testing
testGenerateNextIDExists
	"test method exists"

	self assert: [ Customer respondsTo: #generateNextID ]
			description: 'method Customer class generateNextID does not exist'