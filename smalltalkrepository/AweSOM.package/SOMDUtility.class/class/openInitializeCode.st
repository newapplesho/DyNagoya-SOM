class initialization
openInitializeCode
	| wsContents |
	Workspace openContents:'Gofer it
    url: ''http://ss3.gemstone.com/ss/AweSOM'';
    package: ''ConfigurationOfAweSOM'';
    load.

(Smalltalk at: #ConfigurationOfAweSOM) loadDevelopment.

somCodePath := (FileSystem disk workingDirectory path parent parent parent parent / ''som-code'') asFileReference asString.
SOMTools setClassPathBase: somCodePath; recompile.
Transcript open.

SOMUniverse new start: { ''TestHarness'' }.

u := SOMUniverse new.
u eval: ''(1 + 2)  println''.



SOMUniverse new eval: ''''''Hello World!'''' println. 1''.'