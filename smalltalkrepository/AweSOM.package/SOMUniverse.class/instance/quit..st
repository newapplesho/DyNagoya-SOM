quiting
quit: errorCode

	interpreter stop.
	Transcript
		cr; cr; cr;
		show: 'VM exited with error code ', errorCode number asString