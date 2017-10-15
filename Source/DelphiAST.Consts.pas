unit DelphiAST.Consts;

interface

type
  TSyntaxNodeType = (
    ntAddr,
    ntDeref,
    ntGeneric,
    ntIndexed,
    ntDot,
    ntCall,
    ntUnaryMinus,
    ntNot,
    ntMul,
    ntFDiv,
    ntDiv,
    ntMod,
    ntAnd,
    ntShl,
    ntShr,
    ntAs,
    ntAdd,
    ntSub,
    ntOr,
    ntXor,
    ntEqual,
    ntNotEqual,
    ntLower,
    ntGreater,
    ntLowerEqual,
    ntGreaterEqual,
    ntIn,
    ntIs,

    //Allow the use of [ntStrictPrivate..ntAutomated].
    ntStrictPrivate,
    ntPrivate,
    ntStrictProtected,
    ntProtected,
    ntPublic,
    ntPublished,
    ntAutomated,

    ntUnknown,
    ntAlignmentParam,
    ntAnonymousMethod,
    ntAnonymousMethodType,
    ntArguments,
    ntAssign,
    ntAt,
    ntAttribute,
    ntAttributes,
    ntBounds,
    ntCase,
    ntCaseElse,
    ntCaseLabel,
    ntCaseLabels,
    ntCaseSelector,
    ntClassConstraint,
    ntConstant,
    ntConstants,
    ntConstraints,
    ntConstructorConstraint,
    ntContains,
    ntDefault,
    ntDependency,
    ntDeprecated,
    ntDimension,
    ntDownTo,
    ntElement,
    ntElse,
    ntEmptyStatement,
    ntEnum,
    ntExcept,
    ntExceptElse,
    ntExceptionHandler,
    ntExperimental,
    ntExports,
    ntExpression,
    ntExpressions,
    ntExternal,
    ntExternalName,
    ntField,
    ntFields,
    ntFinalization,
    ntFinally,
    ntFor,
    ntFrom,
    ntGoto,
    ntGuid,
    ntHelper,
    ntIdentifier,
    ntIf,
    ntImplementation,
    ntImplements,
    ntIndex,
    ntInherited,
    ntInitialization,
    ntInterface,
    ntLabel,
    ntLabeledStatement,
    ntLHS,
    ntLibrary,
    ntLiteral,
    ntMessage,
    ntMethod,
    ntName,
    ntNamedArgument,
    ntPackage,
    ntParameter,
    ntParameters,
    ntPath,
    ntPlatform,
    ntPositionalArgument,
    ntProperty,
    ntRaise,
    ntRead,
    ntRecordConstant,
    ntRecordConstraint,
    ntRecordVariant,
    ntRepeat,
    ntRequires,
    ntResident,
    ntResolutionClause,
    ntResourceString,
    ntReturnType,
    ntRHS,
    ntRoundClose,
    ntRoundOpen,
    ntSet,
    ntStatement,
    ntStatements,
    ntSubrange,
    ntThen,
    ntTo,
    ntTry,
    ntType,
    ntTypeArgs,
    ntTypeDecl,
    ntTypeParam,
    ntTypeParams,
    ntTypeSection,
    ntValue,
    ntVariable,
    ntVariables,
    ntVariantSection,
    ntVariantTag,
    ntUnit,
    ntUses,
    ntWhile,
    ntWith,
    ntWrite,

    ntAnsiComment,
    ntBorComment,
    ntSlashesComment
  );

  TSyntaxNodeTypes = set of TSyntaxNodeType;

  TAttributeName = (
    anType,
    anClass,
    anForwarded,
    anKind,
    anName,
    anVisibility,
    anCallingConvention,
    anPath,
    anMethodBinding,
    anReintroduce,
    anOverload,
    anAbstract,
    anInline
  );

  TAttributeNames = set of TAttributeName;

type
  TSyntaxNodeNames = record
  strict private
    class var FData: array[TSyntaxNodeType] of string;
    function GetItem(const index: TSyntaxNodeType): string; inline;
    class constructor Init;
  public
    property Items[const index: TSyntaxNodeType]: string read GetItem; default;
  end;

var
  SyntaxNodeNames: TSyntaxNodeNames; //for some reason default does not work on class properties.


//const
//  OldSyntaxNodeNames: array [TSyntaxNodeType] of string = (
//    'addr',                        //ntAddr,
//    'deref',                       //ntDeref,
//    'generic',                     //ntGeneric,
//    'indexed',                     //ntIndexed,
//    'dot',                         //ntDot,
//    'call',                        //ntCall,
//    'unaryMinus',                  //ntUnaryMinus,
//    'not',                         //ntNot,
//    'mul',                         //ntMul,
//    'fdiv',                        //ntFDiv,
//    'div',                         //ntDiv,
//    'mod',                         //ntMod,
//    'and',                         //ntAnd,
//    'shl',                         //ntShl,
//    'shr',                         //ntShr,
//    'as',                          //ntAs,
//    'add',                         //ntAdd,
//    'sub',                         //ntSub,
//    'or',                          //ntOr,
//    'xor',                         //ntXor,
//    'equal',                       //ntEqual,
//    'notEqual',                    //ntNotEqual,
//    'lower',                       //ntLower,
//    'greater',                     //ntGreater,
//    'lowerEqual',                  //ntLowerEqual,
//    'greaterEqual',                //ntGreaterEqual,
//    'in',                          //ntIn,
//    'is',                          //ntIs,
//
//    'unknown',                     //ntUnknown,
//    'alignmentparam',              //ntAlignmentParam,
//    'anonymousmethod',             //ntAnonymousMethod,
//    'anonymousmethodtype',         //ntAnonymousMethodType,
//    'arguments',                   //ntArguments,
//    'assign',                      //ntAssign,
//    'at',                          //ntAt,
//    'attribute',                   //ntAttribute,
//    'attributes',                  //ntAttributes,
//    'bounds',                      //ntBounds,
//    'case',                        //ntCase,
//    'caseelse',                    //ntCaseElse,
//    'caselabel',                   //ntCaseLabel,
//    'caselabels',                  //ntCaseLabels,
//    'caseselector',                //ntCaseSelector,
//    'classconstraint',             //ntClassConstraint,
//    'constant',                    //ntConstant,
//    'constants',                   //ntConstants,
//    'constraints',                 //ntConstraints,
//    'constructorconstraint',       //ntConstructorConstraint,
//    'contains',                    //ntContains,
//    'default',                     //ntDefault,
//    'dimension',                   //ntDimension,
//    'downto',                      //ntDownTo,
//    'element',                     //ntElement,
//    'else',                        //ntElse,
//    'emptystatement',              //ntEmptyStatement,
//    'enum',                        //ntEnum,
//    'except',                      //ntExcept,
//    'exceptelse',                  //ntExceptElse,
//    'exceptionhandler',            //ntExceptionHandler,
//    'exports',                     //ntExports,
//    'expression',                  //ntExpression,
//    'expressions',                 //ntExpressions,
//    'external',                    //ntExternal,
//    'field',                       //ntField,
//    'fields',                      //ntFields,
//    'finalization',                //ntFinalization,
//    'finally',                     //ntFinally,
//    'for',                         //ntFor,
//    'from',                        //ntFrom,
//    'goto',                        //ntGoto,
//    'guid',                        //ntGuid,
//    'helper',                      //ntHelper,
//    'identifier',                  //ntIdentifier,
//    'if',                          //ntIf,
//    'implementation',              //ntImplementation,
//    'implements',                  //ntImplements,
//    'index',                       //ntIndex,
//    'inherited',                   //ntInherited,
//    'initialization',              //ntInitialization,
//    'interface',                   //ntInterface,
//    'label',                       //ntLabel,
//    'labeledstatement',            //ntLabeledStatement,
//    'lhs',                         //ntLHS,
//    'literal',                     //ntLiteral,
//    'message',                     //ntMessage,
//    'method',                      //ntMethod,
//    'name',                        //ntName,
//    'namedargument',               //ntNamedArgument,
//    'package',                     //ntPackage,
//    'parameter',                   //ntParameter,
//    'parameters',                  //ntParameters,
//    'path',                        //ntPath,
//    'positionalargument',          //ntPositionalArgument,
//    'protected',                   //ntProtected,
//    'private',                     //ntPrivate,
//    'property',                    //ntProperty,
//    'public',                      //ntPublic,
//    'published',                   //ntPublished,
//    'raise',                       //ntRaise,
//    'read',                        //ntRead,
//    'recordconstraint',            //ntRecordConstraint,
//    'repeat',                      //ntRepeat,
//    'requires',                    //ntRequires,
//    'resolutionclause',            //ntResolutionClause,
//    'resourcestring',              //ntResourceString,
//    'returntype',                  //ntReturnType,
//    'rhs',                         //ntRHS,
//    'roundclose',                  //ntRoundClose,
//    'roundopen',                   //ntRoundOpen,
//    'set',                         //ntSet,
//    'statement',                   //ntStatement,
//    'statements',                  //ntStatements,
//    'strictprivate',               //ntStrictPrivate,
//    'strictprotected',             //ntStrictProtected,
//    'subrange',                    //ntSubrange,
//    'then',                        //ntThen,
//    'to',                          //ntTo,
//    'try',                         //ntTry,
//    'type',                        //ntType,
//    'typeargs',                    //ntTypeArgs,
//    'typedecl',                    //ntTypeDecl,
//    'typeparam',                   //ntTypeParam,
//    'typeparams',                  //ntTypeParams,
//    'typesection',                 //ntTypeSection,
//    'value',                       //ntValue,
//    'variable',                    //ntVariable,
//    'variables',                   //ntVariables,
//    'unit',                        //ntUnit,
//    'uses',                        //ntUses,
//    'while',                       //ntWhile,
//    'with',                        //ntWith,
//    'write',                       //ntWrite,
//
//    'ansicomment',                 //ntAnsiComment,
//    'borlandcomment',              //ntBorComment,
//    'slashescomment'               //ntSlashesComment
//  );

const
  AttributeNameStrings: array[TAttributeName] of string = (
    'type',
    'class',
    'forwarded',
    'kind',
    'name',
    'visibility',
    'callingconvention',
    'path',
    'methodbinding',
    'reintroduce',
    'overload',
    'abstract',
    'inline'
  );

implementation

uses
  SysUtils, TypInfo;

{ TSyntaxNodeNames }

function TSyntaxNodeNames.GetItem(const index: TSyntaxNodeType): string;
begin
  Result:= FData[index];
end;

class constructor TSyntaxNodeNames.Init;
var
  value: TSyntaxNodeType;
begin
  for value := Low(TSyntaxNodeType) to High(TSyntaxNodeType) do
    FData[value] := Copy(LowerCase(GetEnumName(TypeInfo(TSyntaxNodeType), Ord(value))), 3);
end;

end.
