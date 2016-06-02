interface - products
viewAllProducts
	"view list of all products"

	| prod |
	products isEmpty
		ifTrue: [ Transcript show: 'No products exist in system.' ]
		ifFalse: [ Transcript
				show: 'All products: (key, description, price)';
				cr.
			products keysSortedSafely
				do: [ :a | 
					prod := products retrieveByKey: a.
					Transcript
						space;
						space;
						show: a;
						show: ': ';
						show: prod description;
						show: ' - ';
						show:
							(prod price ifNil: [ '[price unspecified]' ] 
											ifNotNil: [ '$' , (prod price printShowingDecimalPlaces: 2) ]);
						cr;
						space ] ]