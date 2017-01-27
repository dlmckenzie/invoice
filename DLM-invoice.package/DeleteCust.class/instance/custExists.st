private - validation
custExists
	"answer whether requested cust was found"

	cust ifNil: [ ^ false ] ifNotNil: [ ^ true ]