interface - products
addProductWithKey: aString
	"add product with key"

	(products keyIsUnique: aString )
		ifTrue: [ 
			products addWithKey: aString.
			Transcript
				show: 'Product added:';
				cr;
				show: '		Key: ' , aString; cr;
				show: '		Name: ';cr;
				show: '		Price: '; cr]