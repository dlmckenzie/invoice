testing
testAddCustWithFirstLastExists
	"test that method addCsutWithFirst:Last exists"
	
	| app |
	app := App new.
	self assert: [ app respondsTo: #addCustWithFirst:Last: ] 
		description: 'addCustWithFirst:Last: method does not exist'

	