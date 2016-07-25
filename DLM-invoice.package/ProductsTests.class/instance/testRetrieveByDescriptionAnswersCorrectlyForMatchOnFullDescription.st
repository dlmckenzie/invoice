testing
testRetrieveByDescriptionAnswersCorrectlyForMatchOnFullDescription
	"happy path"

| products |
	products := Products new.
	products add: (Product newWithKey: 'A').
	products add: (Product newWithKey: 'B').
	products add: (Product newWithKey: 'C').
	(products retrieveByKey: 'A') updateDescription: 'External fastener'.
	(products retrieveByKey: 'B') updateDescription: 'INTERNAL FASTENER'.
	(products retrieveByKey: 'C') updateDescription: 'Internal O-ring'.
	self
		assert: [ (products retrieveByDescription: 'External fastener') size = 1 ]
		description: 'Match on full description name failed'