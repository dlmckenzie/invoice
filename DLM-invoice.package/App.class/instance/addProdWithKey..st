interface - products
addProdWithKey: aString
	"add product with key"

	"(Product keyIsValidForIdentity: aString)
		ifFalse: [ Transcript
				show: 'Invalid key - no changes made';
				cr.
			^ self ]."
	(products keyIsUnique: aString)
		ifTrue: [ products addProd: (Product newWithKey: aString).
			Transcript
				show: 'Product added:';
				cr;
				show: '	Key: ';
				show: aString;
				cr;
				show: '	Name: ';
				cr;
				show: '	Price: ';
				cr ]
		ifFalse: [ Transcript
				show: 'Duplicate product key - no changes made';
				cr ]