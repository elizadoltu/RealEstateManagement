<<<<<<< Updated upstream
å
bC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\RealEstateManagement\Program.cs
=======
ı
KC:\Users\cezar\Desktop\RealEstateManagement\RealEstateManagement\Program.cs
>>>>>>> Stashed changes
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddApplication 
(  
)  !
;! "
builder 
. 
Services 
. 
AddInfrastructure "
(" #
builder# *
.* +
Configuration+ 8
)8 9
;9 :
builder

 
.

 
Services

 
.

 
AddControllers

 
(

  
)

  !
;

! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
await 
app 	
.	 

RunAsync
 
( 
) 
<<<<<<< Updated upstream
; Ñ
vC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\RealEstateManagement\Controllers\UsersController.cs
=======
; Ì
_C:\Users\cezar\Desktop\RealEstateManagement\RealEstateManagement\Controllers\UsersController.cs
>>>>>>> Stashed changes
	namespace 	 
RealEstateManagement
 
. 
Controllers *
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 
UsersController		  
:		! "
ControllerBase		# 1
{

 
private 
readonly 
	IMediator "
mediator# +
;+ ,
public 
UsersController 
( 
	IMediator (
mediator) 1
)1 2
{ 	
this 
. 
mediator 
= 
mediator $
;$ %
} 	
} 
<<<<<<< Updated upstream
} ≥[
}C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\RealEstateManagement\Controllers\TransactionsController.cs
=======
} ú[
fC:\Users\cezar\Desktop\RealEstateManagement\RealEstateManagement\Controllers\TransactionsController.cs
>>>>>>> Stashed changes
	namespace 	 
RealEstateManagement
 
. 
Controllers *
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class "
TransactionsController '
:( )
ControllerBase* 8
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
private 
readonly "
ITransactionRepository /"
_transactionRepository0 F
;F G
public "
TransactionsController %
(% &
	IMediator& /
mediator0 8
,8 9"
ITransactionRepository: P!
transactionRepositoryQ f
)f g
{ 	
	_mediator 
= 
mediator  
;  !"
_transactionRepository "
=# $!
transactionRepository% :
;: ;
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Transaction' 2
>2 3
>3 4
AddTransaction5 C
(C D
TransactionD O
transactionP [
)[ \
{ 	
var 
createdTransaction "
=# $
await% *"
_transactionRepository+ A
.A B
AddTransactionAsyncB U
(U V
transactionV a
)a b
;b c
return 
CreatedAtAction "
(" #
nameof# )
() *
AddTransaction* 8
)8 9
,9 :
new; >
{? @
idA C
=D E
createdTransactionF X
.X Y
TransactionIdY f
}g h
,h i
createdTransactionj |
)| }
;} ~
}   	
["" 	
HttpPut""	 
("" 
$str"" 
)"" 
]"" 
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
UpdateTransaction##) :
(##: ;
Guid##; ?
id##@ B
,##B C
Transaction##D O
transaction##P [
)##[ \
{$$ 	
if%% 
(%% 
id%% 
!=%% 
transaction%% !
.%%! "
TransactionId%%" /
)%%/ 0
{&& 
return'' 

BadRequest'' !
(''! "
)''" #
;''# $
}(( 
try** 
{++ 
await,, "
_transactionRepository,, ,
.,,, -"
UpdateTransactionAsync,,- C
(,,C D
transaction,,D O
),,O P
;,,P Q
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
if00 
(00 
ex00 
.00 
Message00 
.00 
Contains00 '
(00' (
$str00( 3
)003 4
)004 5
{11 
return22 
NotFound22 #
(22# $
)22$ %
;22% &
}33 
throw44 
;44 
}55 
return77 
	NoContent77 
(77 
)77 
;77 
}88 	
[:: 	

HttpDelete::	 
(:: 
$str:: 
):: 
]:: 
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
DeleteTransaction;;) :
(;;: ;
Guid;;; ?
id;;@ B
);;B C
{<< 	
try== 
{>> 
await?? "
_transactionRepository?? ,
.??, -"
DeleteTransactionAsync??- C
(??C D
id??D F
)??F G
;??G H
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
ifCC 
(CC 
exCC 
.CC 
MessageCC 
.CC 
ContainsCC '
(CC' (
$strCC( 3
)CC3 4
)CC4 5
{DD 
returnEE 
NotFoundEE #
(EE# $
)EE$ %
;EE% &
}FF 
throwGG 
;GG 
}HH 
returnJJ 
	NoContentJJ 
(JJ 
)JJ 
;JJ 
}KK 	
[MM 	
HttpGetMM	 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
ActionResultNN &
<NN& '
ResultNN' -
<NN- .
ListNN. 2
<NN2 3
TransactionDtoNN3 A
>NNA B
>NNB C
>NNC D
>NND E
GetAllTransactionsNNF X
(NNX Y
)NNY Z
{OO 	
varPP 
resultPP 
=PP 
awaitPP 
	_mediatorPP (
.PP( )
SendPP) -
(PP- .
newPP. 1#
GetAllTransactionsQueryPP2 I
(PPI J
)PPJ K
)PPK L
;PPL M
ifQQ 
(QQ 
resultQQ 
.QQ 
	IsSuccessQQ  
)QQ  !
{RR 
returnSS 
OkSS 
(SS 
resultSS  
.SS  !
DataSS! %
)SS% &
;SS& '
}TT 
elseUU 
{VV 
returnWW 

BadRequestWW !
(WW! "
resultWW" (
.WW( )
ErrorMessageWW) 5
)WW5 6
;WW6 7
}XX 
}YY 	
[[[ 	
HttpGet[[	 
([[ 
$str[[ 
)[[ 
][[ 
public\\ 
async\\ 
Task\\ 
<\\ 
ActionResult\\ &
<\\& '
TransactionDto\\' 5
>\\5 6
>\\6 7
GetTransactionById\\8 J
(\\J K
Guid\\K O
id\\P R
)\\R S
{]] 	
var^^ 
result^^ 
=^^ 
await^^ 
	_mediator^^ (
.^^( )
Send^^) -
(^^- .
new^^. 1#
GetTransactionByIdQuery^^2 I
{^^J K
TransactionId^^L Y
=^^Z [
id^^\ ^
}^^_ `
)^^` a
;^^a b
if__ 
(__ 
result__ 
.__ 
	IsSuccess__  
)__  !
{`` 
returnaa 
Okaa 
(aa 
resultaa  
.aa  !
Dataaa! %
)aa% &
;aa& '
}bb 
elsecc 
{dd 
returnee 

BadRequestee !
(ee! "
resultee" (
.ee( )
ErrorMessageee) 5
)ee5 6
;ee6 7
}ff 
}gg 	
[ii 	
HttpGetii	 
(ii 
$strii  
)ii  !
]ii! "
publicjj 
asyncjj 
Taskjj 
<jj 
ActionResultjj &
<jj& '
TransactionDtojj' 5
>jj5 6
>jj6 7&
GetTransactionByPropertyIdjj8 R
(jjR S
GuidjjS W
idjjX Z
)jjZ [
{kk 	
varll 
resultll 
=ll 
awaitll 
	_mediatorll (
.ll( )
Sendll) -
(ll- .
newll. 1+
GetTransactionByPropertyIdQueryll2 Q
{llR S

PropertyIdllT ^
=ll_ `
idlla c
}lld e
)lle f
;llf g
ifmm 
(mm 
resultmm 
.mm 
	IsSuccessmm  
)mm  !
{nn 
returnoo 
Okoo 
(oo 
resultoo  
.oo  !
Dataoo! %
)oo% &
;oo& '
}pp 
elseqq 
{rr 
returnss 
NotFoundss 
(ss  
)ss  !
;ss! "
}tt 
}uu 	
[ww 	
HttpGetww	 
(ww 
$strww 
)ww 
]ww 
publicxx 
asyncxx 
Taskxx 
<xx 
ActionResultxx &
<xx& '
Resultxx' -
<xx- .
PagedResultxx. 9
<xx9 :
TransactionDtoxx: H
>xxH I
>xxI J
>xxJ K
>xxK L$
GetTransactionsByBuyerIdxxM e
(xxe f
Guidxxf j
idxxk m
,xxm n
[xxo p
	FromQueryxxp y
]xxy z
intxx{ ~
page	xx É
=
xxÑ Ö
$num
xxÜ á
,
xxá à
[
xxâ ä
	FromQuery
xxä ì
]
xxì î
int
xxï ò
pageSize
xxô °
=
xx¢ £
$num
xx§ ¶
)
xx¶ ß
{yy 	
varzz 
resultzz 
=zz 
awaitzz 
	_mediatorzz (
.zz( )
Sendzz) -
(zz- .
newzz. 1)
GetTransactionsByBuyerIdQueryzz2 O
{zzP Q
BuyerIdzzR Y
=zzZ [
idzz\ ^
,zz^ _
Pagezz` d
=zze f
pagezzg k
,zzk l
PageSizezzm u
=zzv w
pageSize	zzx Ä
}
zzÅ Ç
)
zzÇ É
;
zzÉ Ñ
if{{ 
({{ 
result{{ 
.{{ 
	IsSuccess{{  
){{  !
{|| 
return}} 
Ok}} 
(}} 
result}}  
.}}  !
Data}}! %
)}}% &
;}}& '
}~~ 
else 
{
ÄÄ 
return
ÅÅ 
NotFound
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
}
ÇÇ 
}
ÉÉ 	
[
ÖÖ 	
HttpGet
ÖÖ	 
(
ÖÖ 
$str
ÖÖ 
)
ÖÖ 
]
ÖÖ  
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
ActionResult
ÜÜ &
<
ÜÜ& '
Result
ÜÜ' -
<
ÜÜ- .
PagedResult
ÜÜ. 9
<
ÜÜ9 :
TransactionDto
ÜÜ: H
>
ÜÜH I
>
ÜÜI J
>
ÜÜJ K
>
ÜÜK L'
GetTransactionsBySellerId
ÜÜM f
(
ÜÜf g
Guid
ÜÜg k
id
ÜÜl n
,
ÜÜn o
[
ÜÜp q
	FromQuery
ÜÜq z
]
ÜÜz {
int
ÜÜ| 
pageÜÜÄ Ñ
=ÜÜÖ Ü
$numÜÜá à
,ÜÜà â
[ÜÜä ã
	FromQueryÜÜã î
]ÜÜî ï
intÜÜñ ô
pageSizeÜÜö ¢
=ÜÜ£ §
$numÜÜ• ß
)ÜÜß ®
{
áá 	
var
àà 
result
àà 
=
àà 
await
àà 
	_mediator
àà (
.
àà( )
Send
àà) -
(
àà- .
new
àà. 1,
GetTransactionsBySellerIdQuery
àà2 P
{
ààQ R
SellerId
ààS [
=
àà\ ]
id
àà^ `
,
àà` a
Page
ààb f
=
ààg h
page
àài m
,
ààm n
PageSize
àào w
=
ààx y
pageSizeààz Ç
}ààÉ Ñ
)ààÑ Ö
;ààÖ Ü
if
ââ 
(
ââ 
result
ââ 
.
ââ 
	IsSuccess
ââ  
)
ââ  !
{
ää 
return
ãã 
Ok
ãã 
(
ãã 
result
ãã  
.
ãã  !
Data
ãã! %
)
ãã% &
;
ãã& '
}
åå 
else
çç 
{
éé 
return
èè 
NotFound
èè 
(
èè  
)
èè  !
;
èè! "
}
êê 
}
ìì 	
}
îî 
<<<<<<< Updated upstream
}ïï Ö/
ÅC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\RealEstateManagement\Controllers\PropertyListingsController.cs
=======
}ïï Ì.
jC:\Users\cezar\Desktop\RealEstateManagement\RealEstateManagement\Controllers\PropertyListingsController.cs
>>>>>>> Stashed changes
	namespace		 	 
RealEstateManagement		
 
.		 
Controllers		 *
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class &
PropertyListingsController +
:, -
ControllerBase. <
{ 
private 
readonly 
	IMediator "
mediator# +
;+ ,
public &
PropertyListingsController )
() *
	IMediator* 3
mediator4 <
)< =
{ 	
this 
. 
mediator 
= 
mediator $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Result' -
<- .
Guid. 2
>2 3
>3 4
>4 5!
CreatePropertyListing6 K
(K L(
CreatePropertyListingCommandL h
commandi p
)p q
{ 	
var 
result 
= 
await 
mediator '
.' (
Send( ,
(, -
command- 4
)4 5
;5 6
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Ok 
( 
result  
.  !
Data! %
)% &
;& '
} 
else 
{ 
return   

BadRequest   !
(  ! "
result  " (
.  ( )
ErrorMessage  ) 5
)  5 6
;  6 7
}!! 
}"" 	
[## 	
HttpPut##	 
(## 
$str## 
)## 
]## 
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
Result$$' -
<$$- .
Unit$$. 2
>$$2 3
>$$3 4
>$$4 5!
UpdatePropertyListing$$6 K
($$K L
Guid$$L P
id$$Q S
,$$S T(
UpdatePropertyListingCommand$$U q
command$$r y
)$$y z
{%% 	
if&& 
(&& 
id&& 
!=&& 
command&& 
.&& 

PropertyId&& (
)&&( )
{'' 
return(( 

BadRequest(( !
(((! "
)((" #
;((# $
})) 
var** 
result** 
=** 
await** 
mediator** '
.**' (
Send**( ,
(**, -
command**- 4
)**4 5
;**5 6
if++ 
(++ 
result++ 
.++ 
	IsSuccess++  
)++  !
{,, 
return-- 
	NoContent--  
(--  !
)--! "
;--" #
}.. 
else.. 
{// 
return00 

BadRequest00 !
(00! "
result00" (
.00( )
ErrorMessage00) 5
)005 6
;006 7
}11 
}33 	
[44 	
HttpGet44	 
(44 
$str44 
)44 
]44 
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '
PropertyListingDto55' 9
>559 :
>55: ;
GetListingByIdAsync55< O
(55O P
Guid55P T
id55U W
)55W X
{66 	
var77 
result77 
=77 
await77 
mediator77 '
.77' (
Send77( ,
(77, -
new77- 0
GetListingByIdQuery771 D
{77E F

PropertyId77G Q
=77R S
id77T V
}77W X
)77X Y
;77Y Z
return88 
Ok88 
(88 
result88 
)88 
;88 
}99 	
[;; 	
HttpGet;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
ActionResult<< &
<<<& '
List<<' +
<<<+ ,
PropertyListingDto<<, >
><<> ?
><<? @
><<@ A'
GetAllPropertyListingsAsync<<B ]
(<<] ^
)<<^ _
{== 	
var>> 
result>> 
=>> 
await>> 
mediator>> '
.>>' (
Send>>( ,
(>>, -
new>>- 0&
GetAllPropertyListingQuery>>1 K
(>>K L
)>>L M
)>>M N
;>>N O
return?? 
Ok?? 
(?? 
result?? 
)?? 
;?? 
}@@ 	
[BB 	

HttpDeleteBB	 
(BB 
$strBB 
)BB  
]BB  !
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (!
DeletePropertyListingCC) >
(CC> ?
GuidCC? C
idCCD F
)CCF G
{DD 	
varEE 
resultEE 
=EE 
awaitEE 
mediatorEE '
.EE' (
SendEE( ,
(EE, -
newEE- 0(
DeletePropertyListingCommandEE1 M
{EEN O

PropertyIdEEP Z
=EE[ \
idEE] _
}EE` a
)EEa b
;EEb c
ifFF 
(FF 
resultFF 
.FF 
	IsSuccessFF  
)FF  !
{GG 
returnHH 
	NoContentHH  
(HH  !
)HH! "
;HH" #
}II 
elseJJ 
{KK 
returnLL 

BadRequestLL !
(LL! "
resultLL" (
.LL( )
ErrorMessageLL) 5
)LL5 6
;LL6 7
}MM 
}NN 	
}PP 
<<<<<<< Updated upstream
}QQ ó3
ÄC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\RealEstateManagement\Controllers\ClientInquiriesController.cs
=======
}QQ ˇ2
iC:\Users\cezar\Desktop\RealEstateManagement\RealEstateManagement\Controllers\ClientInquiriesController.cs
>>>>>>> Stashed changes
	namespace 	 
RealEstateManagement
 
. 
Controllers *
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class %
ClientInquiriesController *
:+ ,
ControllerBase- ;
{ 
private 
readonly 
	IMediator "
mediator# +
;+ ,
public %
ClientInquiriesController (
(( )
	IMediator) 2
mediator3 ;
); <
{ 	
this 
. 
mediator 
= 
mediator $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
CreateInquiry) 6
(6 7&
CreateClientInquiryCommand7 Q
commandR Y
)Y Z
{ 	
var 
result 
= 
await 
mediator '
.' (
Send( ,
(, -
command- 4
)4 5
;5 6
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Ok 
( 
result  
.  !
Data! %
)% &
;& '
} 
return 

BadRequest 
( 
result $
.$ %
ErrorMessage% 1
)1 2
;2 3
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetInquiryById) 7
(7 8
Guid8 <
id= ?
)? @
{ 	
var   
result   
=   
await   
mediator   '
.  ' (
Send  ( ,
(  , -
new  - 0
GetInquiryByIdQuery  1 D
{  E F
	InquiryId  G P
=  Q R
id  S U
}  V W
)  W X
;  X Y
return!! 
Ok!! 
(!! 
result!! 
)!! 
;!! 
}"" 	
[## 	
HttpGet##	 
]## 
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
List$$' +
<$$+ ,
PropertyListingDto$$, >
>$$> ?
>$$? @
>$$@ A 
GetAllInquiriesAsync$$B V
($$V W
)$$W X
{%% 	
var&& 
result&& 
=&& 
await&& 
mediator&& '
.&&' (
Send&&( ,
(&&, -
new&&- 0 
GetAllInquiriesQuery&&1 E
(&&E F
)&&F G
)&&G H
;&&H I
return'' 
Ok'' 
('' 
result'' 
)'' 
;'' 
}(( 	
[)) 	
HttpGet))	 
()) 
$str)) )
)))) *
]))* +
public** 
async** 
Task** 
<** 
ActionResult** &
<**& '
List**' +
<**+ ,
ClientInquiryDto**, <
>**< =
>**= >
>**> ?"
GetInquiriesByClientId**@ V
(**V W
Guid**W [
clientId**\ d
)**d e
{++ 	
var,, 
result,, 
=,, 
await,, 
mediator,, '
.,,' (
Send,,( ,
(,,, -
new,,- 0%
GetInquiryByClientIdQuery,,1 J
{,,K L
ClientId,,M U
=,,V W
clientId,,X `
},,a b
),,b c
;,,c d
return-- 
Ok-- 
(-- 
result-- 
)-- 
;-- 
}.. 	
[00 	
HttpPut00	 
(00 
$str00 
)00 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
UpdateInquiry11) 6
(116 7
Guid117 ;
id11< >
,11> ?&
UpdateClientInquiryCommand11@ Z
command11[ b
)11b c
{22 	
if33 
(33 
id33 
!=33 
command33 
.33 
	InquiryId33 &
)33& '
{44 
return55 

BadRequest55 !
(55! "
$str55" 8
)558 9
;559 :
}66 
var77 
result77 
=77 
await77 
mediator77 '
.77' (
Send77( ,
(77, -
command77- 4
)774 5
;775 6
if88 
(88 
result88 
.88 
	IsSuccess88  
)88  !
{99 
return:: 
Ok:: 
(:: 
result::  
.::  !
Data::! %
)::% &
;::& '
};; 
return<< 

BadRequest<< 
(<< 
result<< $
.<<$ %
ErrorMessage<<% 1
)<<1 2
;<<2 3
}== 	
[?? 	

HttpDelete??	 
(?? 
$str?? 
)??  
]??  !
public@@ 
async@@ 
Task@@ 
<@@ 
IActionResult@@ '
>@@' (
DeleteInquiry@@) 6
(@@6 7
Guid@@7 ;
id@@< >
)@@> ?
{AA 	
varBB 
resultBB 
=BB 
awaitBB 
mediatorBB '
.BB' (
SendBB( ,
(BB, -
newBB- 0&
DeleteClientInquiryCommandBB1 K
{BBL M
	InquiryIdBBN W
=BBX Y
idBBZ \
}BB] ^
)BB^ _
;BB_ `
ifCC 
(CC 
resultCC 
.CC 
	IsSuccessCC  
)CC  !
{DD 
returnEE 
OkEE 
(EE 
resultEE  
.EE  !
DataEE! %
)EE% &
;EE& '
}FF 
returnGG 

BadRequestGG 
(GG 
resultGG $
.GG$ %
ErrorMessageGG% 1
)GG1 2
;GG2 3
}HH 	
}II 
}JJ 