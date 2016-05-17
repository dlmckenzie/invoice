private - customer
validateFirst: aString ComparedTo: aString2
	"validate first new first name is diff from what it replaces, and Transcript error if problem"


		aString = aString2
		ifFalse: [ ^ true ]
		ifTrue: [ 
			Transcript show: 'current and replacement name match - no changes made'; cr.
			^ false ]