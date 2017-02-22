private - printing
buildSuccessMsg
	"build success message for printing"
	| orderedKeys |
	stream := String new writeStream.
	stream
		nextPutAll: 'Products whose description matches ''';
		nextPutAll: searchString;
		nextPutAll: ''':';
		cr.
	