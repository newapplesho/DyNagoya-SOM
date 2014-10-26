lookup
lookupGlobal

	"if it's nothing else then it's a global"
	self isGlobal: true.
	"issue a warning if the global dict doesn't contain the reference'"
	(self universe hasGlobalAt: self varName asSymbol) ifTrue: [^ self].
	"Transcript
		cr;
		show: 'WARNING: Recognized variable named ';
		show: self varName;
		show: ' in ';
		show: self mgenc holder theName;
		show: '>>';
		show: self mgenc signature;
		show: ' as global but variable doesn''t appear in global dict!'."