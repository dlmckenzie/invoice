private-validation
validateFirst
	"validate first name"

	firstIsValid := first isString
		ifFalse: [ false ]
		ifTrue: [ (first includesSubstring: ',')
				ifTrue: [ false ]
				ifFalse: [ true ] ]