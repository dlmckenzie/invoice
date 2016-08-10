interface - products
viewProd: aString
	| prod |
	prod := products retrieveByKey: aString.
	prod isNil
		ifTrue: [ Transcript
				show: 'Product with key ' , aString , ' does not exist.';
				cr ]
		ifFalse: [ Transcript
				show: 'Product key: ' , prod key;
				cr;
				show: '  Description: ' , prod description;
				cr;
				show: '  Price: ';
				show: (prod price ifNil: [ '' ] ifNotNil: [ '$' , (prod price printShowingDecimalPlaces: 2) ]);
				cr ]