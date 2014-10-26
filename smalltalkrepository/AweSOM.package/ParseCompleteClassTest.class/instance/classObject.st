as yet unclassified
classObject

	^ 'Object = nil (

    | class |
    
    "Accessing"
    class     = ( ^class )
    
    "Primitive size in bytes"
    objectSize = primitive
    
    "Comparing"
    =  other    = ( ^self == other )
    <> argument = ( ^(self = argument) not )
    == other    = primitive
    isNil       = ( ^false )
    " If you override =, you MUST override hashcode as well.  The rule
      obj1 = obj2   =>  obj1 hashcode = obj2 hashcode
      must be valid for all objects, or Hashtable will not work"
    
    "Converting"
    asString  = ( ^''instance of '' + (self class) )
    , element = ( ^(Vector new append: self) append: element )
    hashcode  = primitive
    
    "Evaluating"
    value     = ( ^self )
    
    "Printing"
    print     = ( self asString print )
    println   = ( self print. system printNewline )
    
    "Error handling"
    error: string = ( '''' println. (''ERROR: '' + string) println. system exit )
    
    "Abstract method support"
    subclassResponsibility = (
        self error: ''This method is abstract and should be overridden''
    )
    
    "Error recovering"
    doesNotUnderstand: selector arguments: arguments = (
        self error:
            (''Method '' + selector + '' not found in class '' + class name)
    )
    
    escapedBlock: block = (
        self error: ''Block has escaped and cannot be executed''
    )
    
    unknownGlobal: name = ( ^system resolve: name )
    
    "Reflection"
    respondsTo: aSymbol = (
        (self class hasMethod: aSymbol)
            ifTrue:  [ ^true ]
            ifFalse: [ | cls |
                cls := self class superclass.
                [ cls isNil ] whileFalse: [
                    (cls hasMethod: aSymbol)
                        ifTrue:  [ ^true ]
                        ifFalse: [ cls := cls superclass ] ].
                ^ false ]
    )
    
)'