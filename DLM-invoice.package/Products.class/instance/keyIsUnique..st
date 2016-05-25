validation
keyIsUnique: aString
	"check that provided key is unique"

	^ (self includesKey: aString) not.