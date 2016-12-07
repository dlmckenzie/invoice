private - validation
validSearchString
	"answer if search string is valid"

	searchString isNil
		ifTrue: [ ^ false ]
		ifFalse: [  
	^ searchString isNotEmpty ]
