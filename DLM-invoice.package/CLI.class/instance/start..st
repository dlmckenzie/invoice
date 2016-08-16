interface - app
start: anApp
	app := anApp. World submorphs
		detect: [ :m | m model = Transcript ]
		ifNone: [ Transcript open ].
	Transcript
		clear;
		show: 'Invoicing App - Command Line Interface';
		cr