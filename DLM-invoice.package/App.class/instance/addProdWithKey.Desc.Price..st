interface - products
addProdWithKey: aKeyString Desc: aDescString Price: aPriceFloat
	"add product with key, description, and price"

	| prod |
	(Product keyIsValidForIdentity: aKeyString)
		ifFalse: [ Transcript
				show: 'Invalid product key - no changes made';
				cr.
			^ self ].
	(Product descriptionIsValid: aDescString)
		ifFalse: [ Transcript
				show: 'Invalid product description - no changes made';
				cr.
			^ self ].
	(Product priceIsValid: aPriceFloat)
		ifFalse: [ Transcript
				show: 'Invalid product price - no changes made';
				cr.
			^ self ].
	(products keyIsUnique: aKeyString)
		ifTrue: [ products add: (Product newWithKey: aKeyString).
			prod := products retrieveByKey: aKeyString.
			prod
				updateDescription: aDescString;
				updatePrice: aPriceFloat.
			Transcript
				show: 'Product added:';
				cr;
				show: '	Key: ';
				show: aKeyString;
				cr;
				show: '	Name: ';
				show: aDescString;
				cr;
				show: '	Price: ';
				show: '$';
				show: (aPriceFloat printShowingDecimalPlaces: 2);
				cr ]
		ifFalse: [ Transcript
				show: 'Duplicate product key - no changes made';
				cr ]