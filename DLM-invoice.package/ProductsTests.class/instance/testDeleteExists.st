testing
testDeleteExists
	"test that method exists"

	self assert: [ Products new respondsTo: #delete: ] description: 'method Products deleteByKey: does not exist'