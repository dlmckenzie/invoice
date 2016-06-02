interface - products
searchProdByDesc: aString
	"view all products whose description contains with aString, sorted by the product key"

	| matches orderedKeys |
	matches := (products retrieveByDescription: aString).
	matches isEmpty
		ifTrue: [ Transcript
				show: 'No product matches found';
				cr ]
		ifFalse: [ Transcript
				show: 'Matching products (sorted by product key):';
				cr.
			orderedKeys := matches keysSortedSafely.
			orderedKeys
				do: [ :a | 
					Transcript
						show: '  ';
						show: a;
						show: ': ';
						show: (products retrieveByKey: a) description; cr ] ]