testing
testDeleteAccepts1Arg
	"test method accepts 1 argument"

	self assert: [ (Products >> #delete:) argumentNames size = 1 ] description: 'method defined with incorrect number of parameters'