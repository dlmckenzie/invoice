interface - products
updateProd: aProductString WithPrice: aFloat
	"update product with new description"

	| prod old |
"	(Product priceIsValid: aFloat)
		ifFalse: [ Transcript
				show: 'Invalid price - no changes made.';
				cr.
			^ self ]."
	prod := products retrieveByKey: aProductString.
	prod isNil
		ifTrue: [ Transcript
				show: 'Product for key ';
				show: aProductString;
				show: ' doesn''t exist - no changes made.';
				cr.
			^ self ].
	old := prod price.
	old = aFloat
		ifTrue: [ Transcript
				show: 'Current and replacement product price match - no changes made.';
				cr.
			^ self ].
	prod updatePrice: aFloat.
	Transcript
		show: 'Product ';
		show: prod key;
		show: '''s price updated from ';
		show: (old ifNil: [ '' ] ifNotNil: [ '$' , (old printShowingDecimalPlaces: 2) ]);
		show: ' to ';
		show: (prod price ifNil: [ '' ] ifNotNil: [ '$' , (prod price printShowingDecimalPlaces: 2) ]);
		cr