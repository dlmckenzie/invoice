testing
testRetrieveByDescriptionAnswersCorrectlyForSubstringMatch
	"happy path"

	| products |
	products := Products new.
	products
		addWithKey: 'A';
		addWithKey: 'B';
		addWithKey: 'C'.
	(products retrieveByKey: 'A') updateDescription: 'External fastener'.
	(products retrieveByKey: 'B') updateDescription: 'INTERNAL FASTENER'.
	(products retrieveByKey: 'C') updateDescription: 'Internal O-ring'.
	self assert: [ (products retrieveByDescription: 'o') size = 1 ] description: 'Substring match failed'