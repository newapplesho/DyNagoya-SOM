accessing
somInstanceFields: anObject 
	somInstanceFields := anObject.
	somInstanceInvokables ~= universe globalNil
		ifTrue: [somInstanceInvokables do: [ :invokable | 
			(invokable isKindOf: SOMMethod)
				ifTrue: [invokable inferFieldIndexesFrom: self]]]