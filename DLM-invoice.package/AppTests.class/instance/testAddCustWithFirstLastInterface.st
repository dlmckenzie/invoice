testing - customer
testAddCustWithFirstLastInterface
	"test method interface"

	| app |
	app := App new.
	app start.
	self
		assert: [ app respondsTo: #addCustWithFirst:Last: ]
		description: 'addCustWithFirst:Last: method does not exist'.
	self
		assert: [ (app addCustWithFirst: 'Joe' Last: 'Smith') isMemberOf: Customer ]
		description: 'method did not answer with a Customer'