as yet unclassified
decoratorTestWithStrings

| result |
result := String fromString: (
	String fromString: (
		String fromString: ( 
			String fromString: '   dave   '
		) trimBoth
	) capitalized
).
^ result

	