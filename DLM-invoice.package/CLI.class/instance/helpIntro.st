interface - help
helpIntro
	"prints help intro to Transcript"

	stream := String new writeStream.
	stream
		nextPutAll: 'Invoice System Help Commands';
		cr;
		space: 2;
		nextPutAll: '(Type help followed by command for more info)';
		cr.
	self displayHelp: stream