accessing
somInstanceInvokables: anObject 
	somInstanceInvokables := anObject.
	somInstanceInvokables do: [ :invokable | invokable somHolder: self ]