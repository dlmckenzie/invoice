private
generateNextNumber
	"answer next avail invoice number"

	nextNumber isNil
		ifTrue: [ nextNumber := 0 ].
	nextNumber := nextNumber + 1.
	^ nextNumber