interface - products
updateProd: aProductString WithDescription: aDescString
	"update product with new description"

	| prod old |
	(Product descriptionIsValid: aDescString)
		ifFalse: [ Transcript
				show: 'Invalid product description - no changes made.';
				cr.
			^ self ].
	prod := products retrieveByKey: aProductString.
	prod isNil
		ifTrue: [ Transcript
				show: 'Product for key ';
				show: aProductString;
				show: ' doesn''t exist - no changes made.';
				cr.
			^ self ].
	old := prod description.
	old = aDescString
		ifTrue:
			[ Transcript show: 'Current and replacement product description match - no changes made.'; cr.
			^ self ].
	prod updateDescription: aDescString.
	Transcript
		show: 'Product ';
		show: prod key;
		show: '''s description updated from ';
		show: '''';
		show: old;
		show: ''' to ''';
		show: prod description;
		show: '''';
		cr