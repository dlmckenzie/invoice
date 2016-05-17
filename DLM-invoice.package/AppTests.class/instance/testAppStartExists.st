testing
testAppStartExists
	"test that the start method exists"

	| app |
	app := App new.
	self assert: [ app respondsTo: #start ] description: 'start method does not exist'