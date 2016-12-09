private - printing
buildFailureMsg
	"assemble text for unsuccessful adding of product"

	stream := String new writeStream.
	stream
		nextPutAll: validationError;
		space;
		nextPutAll: '- product not added.';
		cr