private - customer
validateLast: aString ComparedTo: aString2
	"validate new last name is diff from what it replaces, and Transcript error if problem"


		aString = aString2
		ifFalse: [ ^ true ]
		ifTrue: [ 
			Transcript show: 'Current and replacement name match - no changes made'; cr.
			^ false ]