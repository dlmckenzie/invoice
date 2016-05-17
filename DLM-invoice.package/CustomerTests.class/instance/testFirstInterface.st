testing
testFirstInterface
	"test method accepts 1 argument"
	
	self assert: [ ((Customer >>#first:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
		