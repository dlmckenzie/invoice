testing
testViewCustForIDExists
	"test that the viewCustForID: method exists"

	| app |
	app := App new.
	self assert: [ app respondsTo: #viewCust: ] description: 'viewCustForID: method does not exist'