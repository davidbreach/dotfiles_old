" Vim syntax file
" Language:	LIMS Basic
" Maintainer:	David Breach	
" Last Change:
"   2009 Jan 15  New file
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Operators = " ( )
"
" LIMSBasic is case insensitive
syn case ignore

"syn keyword lbConditional If Then ElseIf Else Select Case

"syn keyword lbOperator AddressOf And ByRef ByVal Eqv Imp In
"syn keyword lbOperator Is Like Mod Not Or To Xor

" LIMSBasic
syn keyword lbConditional if selectcase for endif endselect next

" LIMSBasic
syn match lbOperator "\""
"syn match lbOperator "[()+.,\-/*=&]"
"syn match lbOperator "[<>]=\="
"syn match lbOperator "<>"
"syn match lbOperator "\s\+_$"

syn keyword lbBoolean  True False
syn keyword lbConst Null Nothing

" LIMSBasic
syn keyword lbRepeat Case Do Else ElseIf GoSub Loop Return Select Then Wend While

" LIMSBasic
syn keyword lbEvents AddAdHocProjectResult AddAdHocResult AddLotSource
syn keyword lbEvents AddObjectToInvestigation AddProjectItem AddQCToBatch
syn keyword lbEvents AddSampleToBatch AddSampleToLot AddTestsToBatch
syn keyword lbEvents AddTestToBatch Alert AliquotSample AliquotTest
syn keyword lbEvents AssignOptionalResults AssignSpecTests AssignTest
syn keyword lbEvents AssignTestList AssignTestWithVariation AuditBatchReport
syn keyword lbEvents AuditInventoryReport AuditInvestigationReport
syn keyword lbEvents AuditLotReport AuditProjectReport AuditProtocolReport
syn keyword lbEvents AuditReasonForObject AuditSampleReport AuditTableReport
syn keyword lbEvents AuthorizeBatchResult AuthorizeProjectResult
syn keyword lbEvents AuthorizeResult AuthorizeSample AuthorizeTest 
syn keyword lbEvents BatchAction BatchCalculate BatchObjects BatchObjectType
syn keyword lbEvents BatchPosition CalculateResult Calibrate
syn keyword lbEvents CanAuthorizeResult CanAuthorizeSample CanAuthorizeTest
syn keyword lbEvents CanCancelResult CanCancelSample CanCancelTest
syn keyword lbEvents CancelResult CancelSample CancelTest CanReactivateSample
syn keyword lbEvents CanRejectResult CanRejectSample CanRejectTest
syn keyword lbEvents CanReleaseSample CanRestoreResult CanRestoreSample
syn keyword lbEvents CanRestoreTest CanUnreleaseSample ChangeSampleLocation
syn keyword lbEvents CheckInstruments CheckSpec CheckToken
syn keyword lbEvents ClearMemoryIncrement CloseBatch CloseCrystalReportWindow
syn keyword lbEvents CloseInvestigation CloseLot CloseProject ConfirmUser
syn keyword lbEvents ConvertResultToNumeric ConvertResultToText CopySample
syn keyword lbEvents CopyTableRecord CreateAdHocFolder CreateBatch
syn keyword lbEvents CreateFolder CreateInventory CreateInvestigation
syn keyword lbEvents CreateLot CreateLotResult CreateProject
syn keyword lbEvents CreateStandardReagent DisplayReport DispositionLot 
syn keyword lbEvents ExecuteQueryTag ExportObject FolderObjects FolderResults 
syn keyword lbEvents GetBatchSampleResult GetIncrement GetLabelPrinterConfig
syn keyword lbEvents GetLastSampleGroupNumber GetMemoryIncrement HasChanges 
syn keyword lbEvents ImportLotResults ImportObject InControl InsertTable
syn keyword lbEvents InSpec IsUserCertifiedForAnalysis
syn keyword lbEvents IsUserCertifiedForInstrument LogSample MailReport
syn keyword lbEvents MakeSubSample MoveBatchObject OpenCrystalReportWindow
syn keyword lbEvents OpenPDFWindow OpenRecordGridEditor OptionalTests
syn keyword lbEvents OutOfControl OutOfSpec PrintLabels PrintReport
syn keyword lbEvents ProjectResults PromptForAuditReason ReactivateBatchResult
syn keyword lbEvents ReactivateSample ReceiveSample ReduceInventory
syn keyword lbEvents RefreshSample RefreshTest RejectBatchResult
syn keyword lbEvents RejectProjectResult RejectResult RejectSample RejectTest
syn keyword lbEvents ReleaseSample RemoveInventory RemoveLotSource
syn keyword lbEvents RemoveObjectFromInvestigation RemoveSampleFromBatch
syn keyword lbEvents RemoveTableRecord RemoveTest RemoveTestFromBatch
syn keyword lbEvents ReplicateResult ReplicateTest Resample ResampleStandard
syn keyword lbEvents ResetAuditReason RestoreInvestigation RestoreResult
syn keyword lbEvents RestoreSample RestoreTest Result ResultFld ResultFlds
syn keyword lbEvents RunReport SampleFld Save SaveBatch SetAuditReason
syn keyword lbEvents SetAuditReasonForObject SetLabelPrinterConfig
syn keyword lbEvents SetOrCreateBatchResult SetOrCreateResult SetResult
syn keyword lbEvents SetResultUnits ShiftBatchObject SplitLot TestFld TestFlds
syn keyword lbEvents UnreceiveSample UnreleaseSample
syn keyword lbEvents UpdateActiveFlagForApprovedRecords UpdateBatchFld
syn keyword lbEvents UpdateInstrumentFld UpdateInventory
syn keyword lbEvents UpdateInvestigationFld UpdateLotFld UpdateNumericEntry
syn keyword lbEvents UpdateProduct UpdateProjectFld UpdateResultFld
syn keyword lbEvents UpdateSampleFld UpdateStandardFld UpdateTableFlds
syn keyword lbEvents UpdateTestFld VerifyUser ViewSample


" LIMSBasic
syn keyword lbFunction Asc Chr ExtractNumber ExtractNumbers
syn keyword lbFunction ArrayDistinctValues ArrayFilter ArrayFilterIndex
syn keyword lbFunction ArrayMax ArrayMin ArrayOfSubstrings ArraySortIndex
syn keyword lbFunction ArraySubset ArrayToCSV ArrayWithName ClearArray UBound
syn keyword lbFunction InStr LCase Left Len Mid Replace Right Space Str
syn keyword lbFunction StrNoExp StringReplace Trim UCase XMLParse XMLQuery
syn keyword lbFunction SQL SQLSelect IsEmpty IsNull IsNumeric

" LIMSBasic
syn keyword lbMethods Abort BackgroundSubroutine Breakpoint CodeSearch
syn keyword lbMethods DeactivateExpiredStandard DebugMessage Execute
syn keyword lbMethods GetGlobalVariable NLS SelectSample SetGlobalVariable
syn keyword lbMethods StatusMessage Subroutine Trace
syn keyword lbMethods UpdateAnalysisApprovalExpiration
syn keyword lbMethods UpdateInstrumentApprovalExpiration Wait IsODBCOpen
syn keyword lbMethods ODBCClose ODBCColumns ODBCDateTimeStamp ODBCOpen
syn keyword lbMethods ODBCQuery BrowseSelect BrowseSelectSample
syn keyword lbMethods CloseProgressDialog CreateDialog InputBox InputPassword
syn keyword lbMethods MsgBox MultiSelectDialog MultiSelectFromArray 
syn keyword lbMethods OpenProgressDialog PromptForYesNo SelectFromArray
syn keyword lbMethods UpdateProgressDialog ClearComm CloseComm OpenComm
syn keyword lbMethods ReadComm SendComm WaitComm AddObjectToWorksheet
syn keyword lbMethods CloseWorksheet CreateWorksheet GetWorksheetField
syn keyword lbMethods GetWorksheetFieldNames OpenWorksheetOnTemplate
syn keyword lbMethods OpenWorksheet SaveWorksheet SetFormField UserDialog



syn keyword lbStatement status table keyFields keyValues fields values
syn keyword lbStatement auditReason

"syn keyword lbStatement Alias AppActivate As Base Beep Begin Call ChDir
"syn keyword lbStatement ChDrive Close Const Date Declare DefBool DefByte
"syn keyword lbStatement DefCur DefDate DefDbl DefDec DefInt DefLng DefObj
"syn keyword lbStatement DefSng DefStr DefVar Deftype DeleteSetting Dim Do
"syn keyword lbStatement Each ElseIf End Enum Erase Error Event Exit
"syn keyword lbStatement Explicit FileCopy For ForEach Function Get GoSub
"syn keyword lbStatement GoTo Gosub Implements Kill LSet Let Lib LineInput
"syn keyword lbStatement Load Lock Loop Mid MkDir Name Next On OnError Open
"syn keyword lbStatement Option Preserve Private Property Public Put RSet
"syn keyword lbStatement RaiseEvent Randomize ReDim Redim Rem Reset Resume
"syn keyword lbStatement Return RmDir SavePicture SaveSetting Seek SendKeys
"syn keyword lbStatement Sendkeys Set SetAttr Static Step Stop Sub Time
"syn keyword lbStatement Type Unload Unlock Until Wend While Width With
"syn keyword lbStatement Write

syn keyword lbKeyword As Binary ByRef ByVal Date Empty Error Friend Get
syn keyword lbKeyword Input Is Len Lock Me Mid New Nothing Null On
syn keyword lbKeyword Option Optional ParamArray Print Private Property
syn keyword lbKeyword Public PublicNotCreateable OnNewProcessSingleUse
syn keyword lbKeyword InSameProcessMultiUse GlobalMultiUse Resume Seek
syn keyword lbKeyword Set Static Step String Time WithEvents

syn keyword lbTodo contained	TODO

"Datatypes
syn keyword lbTypes Boolean Byte Currency Date Decimal Double Empty
syn keyword lbTypes Integer Long Object Single String Variant

"VB defined values
syn keyword lbDefine dbBigInt dbBinary dbBoolean dbByte dbChar

"Numbers
"integer number, or floating point number without a dot.
syn match lbNumber "\<\d\+\>"
"floating point number, with dot
syn match lbNumber "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match lbNumber "\.\d\+\>"
"syn match  lbNumber		"{[[:xdigit:]-]\+}\|&[hH][[:xdigit:]]\+&"
"syn match  lbNumber		":[[:xdigit:]]\+"
"syn match  lbNumber		"[-+]\=\<\d\+\>"
syn match  lbFloat		"[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match  lbFloat		"[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match  lbFloat		"[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character constants
syn region  lbString		start=+"+  end=+"\|$+
syn region  lbComment		start="\(^\|\s\)REM\s" end="$" contains=lbTodo
syn region  lbComment		start="\(^\|\s\)\'"   end="$" contains=lbTodo
syn match   lbLineNumber	"^\d\+\(\s\|$\)"
syn match   lbTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   lbTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_vb_syntax_inits")
	if version < 508
		let did_vb_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	"HiLink lbBoolean		Boolean
	"HiLink lbLineNumber		Comment
	"HiLink lbComment		Comment
	"HiLink lbConditional	Conditional
	"HiLink lbConst			Constant
	"HiLink lbDefine			Constant
	"HiLink vbError			Error
	"HiLink lbFunction		Identifier
	"HiLink vbIdentifier		Identifier
	"HiLink lbNumber			Number
	"HiLink lbFloat			Float
	"HiLink lbMethods		PreProc
	"HiLink lbOperator		Operator
	"HiLink lbRepeat			Repeat
	"HiLink lbString			String
	"HiLink lbStatement		Statement
	"HiLink lbKeyword		Statement
	"HiLink lbEvents			Special
	"HiLink lbTodo			Todo
	"HiLink lbTypes			Type
	"HiLink lbTypeSpecifier	Type

	HiLink lbBoolean		Boolean
	HiLink lbLineNumber		Comment
	HiLink lbComment		Comment
	HiLink lbConditional	Conditional
	HiLink lbConst			Constant
	HiLink lbDefine			Constant
	HiLink lbError			Error
	HiLink lbFunction		Identifier
	HiLink lbIdentifier		Identifier
	HiLink lbNumber			Number
	HiLink lbFloat			Float
	HiLink lbMethods		PreProc
	HiLink lbOperator		Operator
	HiLink lbRepeat			Repeat
	HiLink lbString			String
	HiLink lbStatement		Statement
	HiLink lbKeyword		Statement
	HiLink lbEvents			Special
	HiLink lbTodo			Todo
	HiLink lbTypes			Type
	HiLink lbTypeSpecifier	Type


	delcommand HiLink
endif

let b:current_syntax = "vb"

" vim: ts=8
