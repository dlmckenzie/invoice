testing
testRetrieveByDescriptionAnswersDictContainingAllMatchingProducts
	"happy path"

	| products |
	products := Products new.
	products add: (Product newWithKey: 'A').
	products add: (Product newWithKey: 'B').
	products add: (Product newWithKey: 'C').
	(products retrieveByKey: 'A') updateDescription: 'External fastener'.
	(products retrieveByKey: 'B') updateDescription: 'INTERNAL FASTENER'.
	(products retrieveByKey: 'C') updateDescription: 'Internal O-ring'.
	self assert: [ (products retrieveByDescription: 'Internal') size = 2 ] description: 'Incorrect number of products answered'