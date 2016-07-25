testing
testRetrieveByDescriptionAnswersEmptyProductsForNoMatch
	"happy path"

		| products |
	products := Products new.
	products 
		add: (Product newWithKey: 'A');
		add: (Product newWithKey: 'B');
		add: (Product newWithKey: 'C').
	(products retrieveByKey: 'A') updateDescription: 'External fastener'.
	(products retrieveByKey: 'B') updateDescription: 'INTERNAL FASTENER'.
	(products retrieveByKey: 'C') updateDescription: 'Internal O-ring'.
	self assert: [ (products retrieveByDescription: 'nothing') isEmpty ] description: 'Empty match failed'