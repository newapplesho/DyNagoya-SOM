patterns
literalString
	| s |
	s := universe newString: self string.
	mgenc addLiteralIfAbsent: s.
	mgenc bcPushConstant: s.