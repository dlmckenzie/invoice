testing
testRetrieveByDescriptionAnswersCorrectlyForMatchDespiteMixedCase
	"happy path"

	| products |
	products := Products new.
	products 
		addProd: (Product newWithKey: 'A');
		addProd: (Product newWithKey: 'B');
		addProd: (Product newWithKey: 'C').
	(products retrieveByKey: 'A') updateDescription: 'External fastener'.
	(products retrieveByKey: 'B') updateDescription: 'INTERNAL FASTENER'.
	(products retrieveByKey: 'C') updateDescription: 'Internal O-ring'.
	self assert: [ (products retrieveByDescription: 'internal fastener') size = 1 ] description: 'Match on mixed case failed'