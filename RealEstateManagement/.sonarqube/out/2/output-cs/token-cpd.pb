Ç
VD:\Facultate\dotnet\RealEstateManagement\Infrastructure\Repositories\UserRepository.cs
	namespace 	
Infrastructure
 
. 
Repositories %
{ 
public 

class 
UserRepository 
:  !
IUserRepository" 1
{ 
private		 
readonly		  
ApplicationDbContext		 -
context		. 5
;		5 6
public

 
UserRepository

 
(

  
ApplicationDbContext

 2
context

3 :
)

: ;
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
Task 
< 
IEnumerable 
<  
User  $
>$ %
>% &
GetAllUsersAsync' 7
(7 8
)8 9
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Task 
< 
User 
> 
GetUserByIdAsync *
(* +
Guid+ /
id0 2
)2 3
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Task 
< 
User 
> 
AddUserAsync &
(& '
User' +
user, 0
)0 1
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Task 
UpdateUserAsync #
(# $
User$ (
user) -
)- .
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Task 
DeleteUserAsync #
(# $
Guid$ (
id) +
)+ ,
{ 	
throw   
new   #
NotImplementedException   -
(  - .
)  . /
;  / 0
}!! 	
public## 
Task## 
<## 
IEnumerable## 
<##  
PropertyListing##  /
>##/ 0
>##0 1
GetListingsByUserId##2 E
(##E F
Guid##F J
userId##K Q
)##Q R
{$$ 	
throw%% 
new%% #
NotImplementedException%% -
(%%- .
)%%. /
;%%/ 0
}&& 	
}'' 
}(( Å3
]D:\Facultate\dotnet\RealEstateManagement\Infrastructure\Repositories\TransactionRepository.cs
	namespace 	
Infrastructure
 
. 
Repositories %
{ 
public 

class !
TransactionRepository &
:' ("
ITransactionRepository) ?
{		 
private

 
readonly

  
ApplicationDbContext

 -
context

. 5
;

5 6
public !
TransactionRepository $
($ % 
ApplicationDbContext% 9
context: A
)A B
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Transaction& 1
>1 2
>2 3#
GetAllTransactionsAsync4 K
(K L
)L M
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
async 
Task 
< 
Transaction %
>% &#
GetTransactionByIdAsync' >
(> ?
Guid? C
idD F
)F G
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
async 
Task 
< 
Transaction %
>% &
AddTransactionAsync' :
(: ;
Transaction; F
transactionG R
)R S
{ 	
await 
context 
. 
Transactions &
.& '
AddAsync' /
(/ 0
transaction0 ;
); <
;< =
await 
context 
. 
SaveChangesAsync *
(* +
)+ ,
;, -
return 
transaction 
; 
}   	
public"" 
async"" 
Task"" "
UpdateTransactionAsync"" 0
(""0 1
Transaction""1 <
transaction""= H
)""H I
{## 	
var$$ 
existingTransaction$$ #
=$$$ %
await$$& +
context$$, 3
.$$3 4
Transactions$$4 @
.$$@ A
	FindAsync$$A J
($$J K
transaction$$K V
.$$V W
TransactionId$$W d
)$$d e
;$$e f
if%% 
(%% 
existingTransaction%% #
!=%%$ &
null%%' +
)%%+ ,
{&& 
existingTransaction'' #
.''# $

PropertyId''$ .
=''/ 0
transaction''1 <
.''< =

PropertyId''= G
;''G H
existingTransaction(( #
.((# $
BuyerId(($ +
=((, -
transaction((. 9
.((9 :
BuyerId((: A
;((A B
existingTransaction)) #
.))# $
SellerId))$ ,
=))- .
transaction))/ :
.)): ;
SellerId)); C
;))C D
existingTransaction** #
.**# $
	SalePrice**$ -
=**. /
transaction**0 ;
.**; <
	SalePrice**< E
;**E F
existingTransaction++ #
.++# $
Status++$ *
=+++ ,
transaction++- 8
.++8 9
Status++9 ?
;++? @
context-- 
.-- 
Transactions-- $
.--$ %
Update--% +
(--+ ,
existingTransaction--, ?
)--? @
;--@ A
await.. 
context.. 
... 
SaveChangesAsync.. .
(... /
)../ 0
;..0 1
}// 
else00 
{11 
throw22 
new22 
	Exception22 #
(22# $
$"22$ &
$str22& :
{22: ;
transaction22; F
.22F G
TransactionId22G T
}22T U
$str22U `
"22` a
)22a b
;22b c
}33 
}44 	
public66 
async66 
Task66 "
DeleteTransactionAsync66 0
(660 1
Guid661 5
id666 8
)668 9
{77 	
var88 
transaction88 
=88 
await88 #
context88$ +
.88+ ,
Transactions88, 8
.888 9
	FindAsync889 B
(88B C
id88C E
)88E F
;88F G
if99 
(99 
transaction99 
!=99 
null99 #
)99# $
{:: 
context;; 
.;; 
Transactions;; $
.;;$ %
Remove;;% +
(;;+ ,
transaction;;, 7
);;7 8
;;;8 9
await<< 
context<< 
.<< 
SaveChangesAsync<< .
(<<. /
)<</ 0
;<<0 1
}== 
else>> 
{?? 
throw@@ 
new@@ 
	Exception@@ #
(@@# $
$"@@$ &
$str@@& :
{@@: ;
id@@; =
}@@= >
$str@@> I
"@@I J
)@@J K
;@@K L
}AA 
}BB 	
publicDD 
TaskDD 
<DD 
ResultDD 
<DD 
TransactionDD &
>DD& '
>DD' (+
GetTransactionByPropertyIdAsyncDD) H
(DDH I
GuidDDI M
idDDN P
)DDP Q
{EE 	
throwFF 
newFF #
NotImplementedExceptionFF -
(FF- .
)FF. /
;FF/ 0
}GG 	
publicII 
TaskII 
<II 
IEnumerableII 
<II  
TransactionII  +
>II+ ,
>II, -$
GetTransactionsByBuyerIdII. F
(IIF G
GuidIIG K
userIdIIL R
)IIR S
{JJ 	
throwKK 
newKK #
NotImplementedExceptionKK -
(KK- .
)KK. /
;KK/ 0
}LL 	
publicNN 
TaskNN 
<NN 
IEnumerableNN 
<NN  
TransactionNN  +
>NN+ ,
>NN, -%
GetTransactionsBySellerIdNN. G
(NNG H
GuidNNH L
userIdNNM S
)NNS T
{OO 	
throwPP 
newPP #
NotImplementedExceptionPP -
(PP- .
)PP. /
;PP/ 0
}QQ 	
}RR 
}SS ø:
aD:\Facultate\dotnet\RealEstateManagement\Infrastructure\Repositories\PropertyListingRepository.cs
	namespace 	
Infrastructure
 
. 
Repositories %
{ 
public		 

class		 %
PropertyListingRepository		 *
:		+ ,&
IPropertyListingRepository		- G
{

 
private 
readonly  
ApplicationDbContext -
context. 5
;5 6
public %
PropertyListingRepository (
(( ) 
ApplicationDbContext) =
context> E
)E F
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
PropertyListing& 5
>5 6
>6 7
GetAllListingsAsync8 K
(K L
)L M
{ 	
return 
await 
context  
.  !
PropertyListings! 1
.1 2
ToListAsync2 =
(= >
)> ?
;? @
} 	
public 
async 
Task 
< 
PropertyListing )
>) *
GetListingByIdAsync+ >
(> ?
Guid? C
idD F
)F G
{ 	
return 
await 
context  
.  !
PropertyListings! 1
.1 2
	FindAsync2 ;
(; <
id< >
)> ?
;? @
} 	
public 
Task 
< 
IEnumerable 
<  
PropertyListing  /
>/ 0
>0 1
GetListingsByUserId2 E
(E F
GuidF J
userIdK Q
)Q R
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public   
async   
Task   
<   
Result    
<    !
Guid  ! %
>  % &
>  & '
AddListingAsync  ( 7
(  7 8
PropertyListing  8 G
listing  H O
)  O P
{!! 	
try"" 
{## 
await$$ 
context$$ 
.$$ 
PropertyListings$$ .
.$$. /
AddAsync$$/ 7
($$7 8
listing$$8 ?
)$$? @
;$$@ A
await%% 
context%% 
.%% 
SaveChangesAsync%% .
(%%. /
)%%/ 0
;%%0 1
return&& 
Result&& 
<&& 
Guid&& "
>&&" #
.&&# $
Success&&$ +
(&&+ ,
listing&&, 3
.&&3 4

PropertyId&&4 >
)&&> ?
;&&? @
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
return** 
Result** 
<** 
Guid** "
>**" #
.**# $
Failure**$ +
(**+ ,
ex**, .
.**. /
InnerException**/ =
!**= >
.**> ?
ToString**? G
(**G H
)**H I
)**I J
;**J K
}++ 
},, 	
public.. 
async.. 
Task.. 
<.. 
Result..  
<..  !
Guid..! %
>..% &
>..& '
UpdateListingAsync..( :
(..: ;
PropertyListing..; J
listing..K R
)..R S
{// 	
try00 
{11 
var22 
existingListing22 #
=22$ %
await22& +
context22, 3
.223 4
PropertyListings224 D
.22D E
	FindAsync22E N
(22N O
listing22O V
.22V W

PropertyId22W a
)22a b
;22b c
if33 
(33 
existingListing33 #
!=33$ &
null33' +
)33+ ,
{44 
context55 
.55 
Entry55 !
(55! "
existingListing55" 1
)551 2
.552 3
CurrentValues553 @
.55@ A
	SetValues55A J
(55J K
listing55K R
)55R S
;55S T
await66 
context66 !
.66! "
SaveChangesAsync66" 2
(662 3
)663 4
;664 5
return88 
Result88 !
<88! "
Guid88" &
>88& '
.88' (
Success88( /
(88/ 0
listing880 7
.887 8

PropertyId888 B
)88B C
;88C D
}99 
else:: 
{;; 
return<< 
Result<< !
<<<! "
Guid<<" &
><<& '
.<<' (
Failure<<( /
(<</ 0
$str<<0 D
)<<D E
;<<E F
}== 
}>> 
catch?? 
(?? 
	Exception?? 
ex?? 
)??  
{@@ 
varAA 
errorMessageAA  
=AA! "
exAA# %
.AA% &
InnerExceptionAA& 4
!=AA5 7
nullAA8 <
?AA= >
exAA? A
.AAA B
InnerExceptionAAB P
.AAP Q
MessageAAQ X
:AAY Z
exAA[ ]
.AA] ^
MessageAA^ e
;AAe f
returnBB 
ResultBB 
<BB 
GuidBB "
>BB" #
.BB# $
FailureBB$ +
(BB+ ,
errorMessageBB, 8
)BB8 9
;BB9 :
}CC 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
ResultGG  
<GG  !
GuidGG! %
>GG% &
>GG& '
DeleteListingAsyncGG( :
(GG: ;
GuidGG; ?
idGG@ B
)GGB C
{HH 	
tryII 
{JJ 
varKK 
propertyListingKK #
=KK$ %
awaitKK& +
contextKK, 3
.KK3 4
PropertyListingsKK4 D
.KKD E
	FindAsyncKKE N
(KKN O
idKKO Q
)KKQ R
;KKR S
ifLL 
(LL 
propertyListingLL #
!=LL$ &
nullLL' +
)LL+ ,
{MM 
contextNN 
.NN 
PropertyListingsNN ,
.NN, -
RemoveNN- 3
(NN3 4
propertyListingNN4 C
)NNC D
;NND E
awaitOO 
contextOO !
.OO! "
SaveChangesAsyncOO" 2
(OO2 3
)OO3 4
;OO4 5
returnPP 
ResultPP !
<PP! "
GuidPP" &
>PP& '
.PP' (
SuccessPP( /
(PP/ 0
idPP0 2
)PP2 3
;PP3 4
}QQ 
returnRR 
ResultRR 
<RR 
GuidRR "
>RR" #
.RR# $
FailureRR$ +
(RR+ ,
$strRR, H
)RRH I
;RRI J
}SS 
catchTT 
(TT 
	ExceptionTT 
exTT 
)TT  
{UU 
returnXX 
ResultXX 
<XX 
GuidXX "
>XX" #
.XX# $
FailureXX$ +
(XX+ ,
exXX, .
.XX. /
InnerExceptionXX/ =
!XX= >
.XX> ?
ToStringXX? G
(XXG H
)XXH I
)XXI J
;XXJ K
}YY 
}ZZ 	
}[[ 
}\\ ∞B
_D:\Facultate\dotnet\RealEstateManagement\Infrastructure\Repositories\ClientInquiryRepository.cs
	namespace 	
Infrastructure
 
. 
Repositories %
{ 
public		 

class		 #
ClientInquiryRepository		 (
:		) *$
IClientInquiryRepository		+ C
{

 
private 
readonly  
ApplicationDbContext -
context. 5
;5 6
public #
ClientInquiryRepository &
(& ' 
ApplicationDbContext' ;
context< C
)C D
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ClientInquiry& 3
>3 4
>4 5 
GetAllInquiriesAsync6 J
(J K
)K L
{ 	
return 
await 
context  
.  !
ClientInquiries! 0
.0 1
ToListAsync1 <
(< =
)= >
;> ?
} 	
public 
async 
Task 
< 
ClientInquiry '
>' (
GetInquiryByIdAsync) <
(< =
Guid= A
idB D
)D E
{ 	
var 
inquiry 
= 
await 
context  '
.' (
ClientInquiries( 7
.7 8
	FindAsync8 A
(A B
idB D
)D E
;E F
if 
( 
inquiry 
== 
null 
)  
{ 
throw 
new  
KeyNotFoundException .
(. /
$"/ 1
$str1 H
{H I
idI K
}K L
$strL W
"W X
)X Y
;Y Z
} 
return 
inquiry 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ClientInquiry& 3
>3 4
>4 5"
GetInquiriesByClientId6 L
(L M
GuidM Q
userIdR X
)X Y
{ 	
return 
await 
context  
.  !
ClientInquiries! 0
.0 1
ToListAsync1 <
(< =
)= >
;> ?
}   	
public!! 
async!! 
Task!! 
<!! 
Result!!  
<!!  !
Guid!!! %
>!!% &
>!!& '
AddInquiryAsync!!( 7
(!!7 8
ClientInquiry!!8 E
inquiry!!F M
)!!M N
{"" 	
try## 
{$$ 
await%% 
context%% 
.%% 
ClientInquiries%% -
.%%- .
AddAsync%%. 6
(%%6 7
inquiry%%7 >
)%%> ?
;%%? @
await&& 
context&& 
.&& 
SaveChangesAsync&& .
(&&. /
)&&/ 0
;&&0 1
return'' 
Result'' 
<'' 
Guid'' "
>''" #
.''# $
Success''$ +
(''+ ,
inquiry'', 3
.''3 4
	InquiryId''4 =
)''= >
;''> ?
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 
var++ 
errorMessage++  
=++! "
ex++# %
.++% &
InnerException++& 4
!=++5 7
null++8 <
?++= >
ex++? A
.++A B
InnerException++B P
.++P Q
ToString++Q Y
(++Y Z
)++Z [
:++\ ]
ex++^ `
.++` a
Message++a h
;++h i
return,, 
Result,, 
<,, 
Guid,, "
>,," #
.,,# $
Failure,,$ +
(,,+ ,
errorMessage,,, 8
),,8 9
;,,9 :
}-- 
}.. 	
public// 
async// 
Task// 
<// 
Result//  
<//  !
Guid//! %
>//% &
>//& '
UpdateInquiryAsync//( :
(//: ;
ClientInquiry//; H
inquiry//I P
)//P Q
{00 	
try11 
{22 
var33 
existingInquiry33 #
=33$ %
await33& +
context33, 3
.333 4
ClientInquiries334 C
.33C D
	FindAsync33D M
(33M N
inquiry33N U
.33U V
	InquiryId33V _
)33_ `
;33` a
if44 
(44 
existingInquiry44 #
!=44$ &
null44' +
)44+ ,
{55 
context66 
.66 
Entry66 !
(66! "
existingInquiry66" 1
)661 2
.662 3
CurrentValues663 @
.66@ A
	SetValues66A J
(66J K
inquiry66K R
)66R S
;66S T
await77 
context77 !
.77! "
SaveChangesAsync77" 2
(772 3
)773 4
;774 5
return99 
Result99 !
<99! "
Guid99" &
>99& '
.99' (
Success99( /
(99/ 0
inquiry990 7
.997 8
	InquiryId998 A
)99A B
;99B C
}:: 
else;; 
{<< 
return== 
Result== !
<==! "
Guid==" &
>==& '
.==' (
Failure==( /
(==/ 0
$str==0 D
)==D E
;==E F
}>> 
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
varBB 
errorMessageBB  
=BB! "
exBB# %
.BB% &
InnerExceptionBB& 4
!=BB5 7
nullBB8 <
?BB= >
exBB? A
.BBA B
InnerExceptionBBB P
.BBP Q
MessageBBQ X
:BBY Z
exBB[ ]
.BB] ^
MessageBB^ e
;BBe f
returnCC 
ResultCC 
<CC 
GuidCC "
>CC" #
.CC# $
FailureCC$ +
(CC+ ,
errorMessageCC, 8
)CC8 9
;CC9 :
}DD 
}EE 	
publicFF 
asyncFF 
TaskFF 
<FF 
ResultFF  
<FF  !
GuidFF! %
>FF% &
>FF& '
DeleteInquiryAsyncFF( :
(FF: ;
GuidFF; ?
idFF@ B
)FFB C
{GG 	
tryHH 
{II 
varJJ 
inquiryJJ 
=JJ 
awaitJJ #
contextJJ$ +
.JJ+ ,
ClientInquiriesJJ, ;
.JJ; <
	FindAsyncJJ< E
(JJE F
idJJF H
)JJH I
;JJI J
ifKK 
(KK 
inquiryKK 
!=KK 
nullKK #
)KK# $
{LL 
contextMM 
.MM 
ClientInquiriesMM +
.MM+ ,
RemoveMM, 2
(MM2 3
inquiryMM3 :
)MM: ;
;MM; <
awaitNN 
contextNN !
.NN! "
SaveChangesAsyncNN" 2
(NN2 3
)NN3 4
;NN4 5
returnOO 
ResultOO !
<OO! "
GuidOO" &
>OO& '
.OO' (
SuccessOO( /
(OO/ 0
idOO0 2
)OO2 3
;OO3 4
}PP 
returnQQ 
ResultQQ 
<QQ 
GuidQQ "
>QQ" #
.QQ# $
FailureQQ$ +
(QQ+ ,
$strQQ, ?
)QQ? @
;QQ@ A
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
varUU 
errorMessageUU  
=UU! "
exUU# %
.UU% &
InnerExceptionUU& 4
!=UU5 7
nullUU8 <
?UU= >
exUU? A
.UUA B
InnerExceptionUUB P
.UUP Q
ToStringUUQ Y
(UUY Z
)UUZ [
:UU\ ]
exUU^ `
.UU` a
MessageUUa h
;UUh i
returnVV 
ResultVV 
<VV 
GuidVV "
>VV" #
.VV# $
FailureVV$ +
(VV+ ,
errorMessageVV, 8
)VV8 9
;VV9 :
}WW 
}XX 	
}YY 
}ZZ ‚c
[D:\Facultate\dotnet\RealEstateManagement\Infrastructure\Persistance\ApplicationDbContext.cs
	namespace 	
Infrastructure
 
. 
Persistance $
{ 
public 

class  
ApplicationDbContext %
:& '
	DbContext( 1
{ 
public  
ApplicationDbContext #
(# $
DbContextOptions$ 4
<4 5 
ApplicationDbContext5 I
>I J
optionsK R
)R S
:T U
baseV Z
(Z [
options[ b
)b c
{		 	
}

 	
public 
DbSet 
< 
PropertyListing $
>$ %
PropertyListings& 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
DbSet 
< 
ClientInquiry "
>" #
ClientInquiries$ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
DbSet 
< 
Transaction  
>  !
Transactions" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
.  
HasPostgresExtension -
(- .
$str. 9
)9 :
;: ;
modelBuilder 
. 
Entity 
<  
PropertyListing  /
>/ 0
(0 1
entity 
=> 
{ 
entity 
. 
ToTable &
(& '
$str' 9
)9 :
;: ;
entity 
. 
HasKey %
(% &
e& '
=>( *
e+ ,
., -

PropertyId- 7
)7 8
;8 9
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /

PropertyId/ 9
)9 :
.: ;
HasColumnType; H
(H I
$strI O
)O P
.P Q
HasDefaultValueSqlQ c
(c d
$strd x
)x y
.y z 
ValueGeneratedOnAdd	z ç
(
ç é
)
é è
;
è ê
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
Address/ 6
)6 7
.7 8

IsRequired8 B
(B C
)C D
.D E
HasMaxLengthE Q
(Q R
$numR U
)U V
;V W
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
Type/ 3
)3 4
.4 5

IsRequired5 ?
(? @
)@ A
;A B
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
Price/ 4
)4 5
.5 6

IsRequired6 @
(@ A
)A B
;B C
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
SquareFootage/ <
)< =
.= >

IsRequired> H
(H I
)I J
;J K
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
NumberOfBedrooms/ ?
)? @
.@ A

IsRequiredA K
(K L
)L M
;M N
entity 
. 
Property '
(' (
e( )
=>* ,
e- .
.. /
NumberOfBathrooms/ @
)@ A
.A B

IsRequiredB L
(L M
)M N
;N O
entity   
.   
Property   '
(  ' (
e  ( )
=>  * ,
e  - .
.  . /
Description  / :
)  : ;
.  ; <

IsRequired  < F
(  F G
)  G H
.  H I
HasMaxLength  I U
(  U V
$num  V Y
)  Y Z
;  Z [
entity!! 
.!! 
Property!! '
(!!' (
e!!( )
=>!!* ,
e!!- .
.!!. /
Status!!/ 5
)!!5 6
.!!6 7

IsRequired!!7 A
(!!A B
)!!B C
;!!C D
entity"" 
."" 
Property"" '
(""' (
e""( )
=>""* ,
e""- .
."". /
ListingDate""/ :
)"": ;
.""; <

IsRequired""< F
(""F G
)""G H
;""H I
entity## 
.## 
Property## '
(##' (
e##( )
=>##* ,
e##- .
.##. /
	ImageURLs##/ 8
)##8 9
.##9 :

IsRequired##: D
(##D E
)##E F
;##F G
entity$$ 
.$$ 
Property$$ '
($$' (
e$$( )
=>$$* ,
e$$- .
.$$. /
UserID$$/ 5
)$$5 6
.$$6 7

IsRequired$$7 A
($$A B
)$$B C
;$$C D
}** 
)++ 
;++ 
modelBuilder-- 
.-- 
Entity-- 
<--  
ClientInquiry--  -
>--- .
(--. /
entity.. 
=>.. 
{// 
entity00 
.00 
ToTable00 "
(00" #
$str00# 4
)004 5
;005 6
entity11 
.11 
HasKey11 !
(11! "
e11" #
=>11$ &
e11' (
.11( )
	InquiryId11) 2
)112 3
;113 4
entity22 
.22 
Property22 #
(22# $
e22$ %
=>22& (
e22) *
.22* +
	InquiryId22+ 4
)224 5
.225 6
HasColumnType226 C
(22C D
$str22D J
)22J K
.22K L
HasDefaultValueSql22L ^
(22^ _
$str22_ s
)22s t
.22t u 
ValueGeneratedOnAdd	22u à
(
22à â
)
22â ä
;
22ä ã
entity33 
.33 
Property33 #
(33# $
e33$ %
=>33& (
e33) *
.33* +
ClientId33+ 3
)333 4
.334 5

IsRequired335 ?
(33? @
)33@ A
;33A B
}99 
)99 
;99 
modelBuilder;; 
.;; 
Entity;; 
<;;  
Transaction;;  +
>;;+ ,
(;;, -
entity<< 
=><< 
{== 
entity>> 
.>> 
ToTable>> "
(>>" #
$str>># 1
)>>1 2
;>>2 3
entity?? 
.?? 
HasKey?? !
(??! "
e??" #
=>??$ &
e??' (
.??( )
TransactionId??) 6
)??6 7
;??7 8
entity@@ 
.@@ 
Property@@ #
(@@# $
e@@$ %
=>@@& (
e@@) *
.@@* +
TransactionId@@+ 8
)@@8 9
.@@9 :
HasColumnType@@: G
(@@G H
$str@@H N
)@@N O
.@@O P
HasDefaultValueSql@@P b
(@@b c
$str@@c w
)@@w x
.@@x y 
ValueGeneratedOnAdd	@@y å
(
@@å ç
)
@@ç é
;
@@é è
entityAA 
.AA 
PropertyAA #
(AA# $
eAA$ %
=>AA& (
eAA) *
.AA* +

PropertyIdAA+ 5
)AA5 6
.AA6 7

IsRequiredAA7 A
(AAA B
)AAB C
;AAC D
entityBB 
.BB 
PropertyBB #
(BB# $
eBB$ %
=>BB& (
eBB) *
.BB* +
BuyerIdBB+ 2
)BB2 3
.BB3 4

IsRequiredBB4 >
(BB> ?
)BB? @
;BB@ A
entityCC 
.CC 
PropertyCC #
(CC# $
eCC$ %
=>CC& (
eCC) *
.CC* +
SellerIdCC+ 3
)CC3 4
.CC4 5

IsRequiredCC5 ?
(CC? @
)CC@ A
;CCA B
entityDD 
.DD 
PropertyDD #
(DD# $
eDD$ %
=>DD& (
eDD) *
.DD* +
	SalePriceDD+ 4
)DD4 5
.DD5 6

IsRequiredDD6 @
(DD@ A
)DDA B
;DDB C
entityEE 
.EE 
PropertyEE #
(EE# $
eEE$ %
=>EE& (
eEE) *
.EE* +
StatusEE+ 1
)EE1 2
.EE2 3

IsRequiredEE3 =
(EE= >
)EE> ?
;EE? @
entityGG 
.GG 
HasOneGG !
<GG! "
PropertyListingGG" 1
>GG1 2
(GG2 3
)GG3 4
.HH 
WithManyHH !
(HH! "
)HH" #
.II 
HasForeignKeyII &
(II& '
eII' (
=>II) +
eII, -
.II- .

PropertyIdII. 8
)II8 9
.JJ 
OnDeleteJJ !
(JJ! "
DeleteBehaviorJJ" 0
.JJ0 1
CascadeJJ1 8
)JJ8 9
;JJ9 :
entityLL 
.LL 
HasOneLL !
<LL! "
UserLL" &
>LL& '
(LL' (
)LL( )
.MM 
WithManyMM !
(MM! "
)MM" #
.NN 
HasForeignKeyNN &
(NN& '
eNN' (
=>NN) +
eNN, -
.NN- .
BuyerIdNN. 5
)NN5 6
.OO 
OnDeleteOO !
(OO! "
DeleteBehaviorOO" 0
.OO0 1
CascadeOO1 8
)OO8 9
;OO9 :
entityQQ 
.QQ 
HasOneQQ !
<QQ! "
UserQQ" &
>QQ& '
(QQ' (
)QQ( )
.RR 
WithManyRR !
(RR! "
)RR" #
.SS 
HasForeignKeySS &
(SS& '
eSS' (
=>SS) +
eSS, -
.SS- .
SellerIdSS. 6
)SS6 7
.TT 
OnDeleteTT !
(TT! "
DeleteBehaviorTT" 0
.TT0 1
CascadeTT1 8
)TT8 9
;TT9 :
}VV 
)VV 
;VV 
modelBuilderXX 
.XX 
EntityXX 
<XX  
UserXX  $
>XX$ %
(XX% &
entityYY 
=>YY 
{ZZ 
entity[[ 
.[[ 
ToTable[[ "
([[" #
$str[[# *
)[[* +
;[[+ ,
entity\\ 
.\\ 
HasKey\\ !
(\\! "
e\\" #
=>\\$ &
e\\' (
.\\( )
UserId\\) /
)\\/ 0
;\\0 1
entity]] 
.]] 
Property]] #
(]]# $
e]]$ %
=>]]& (
e]]) *
.]]* +
UserId]]+ 1
)]]1 2
.]]2 3
HasColumnType]]3 @
(]]@ A
$str]]A G
)]]G H
.]]H I
HasDefaultValueSql]]I [
(]][ \
$str]]\ p
)]]p q
.]]q r 
ValueGeneratedOnAdd	]]r Ö
(
]]Ö Ü
)
]]Ü á
;
]]á à
entity^^ 
.^^ 
Property^^ #
(^^# $
e^^$ %
=>^^& (
e^^) *
.^^* +
Name^^+ /
)^^/ 0
.^^0 1

IsRequired^^1 ;
(^^; <
)^^< =
.^^= >
HasMaxLength^^> J
(^^J K
$num^^K M
)^^M N
;^^N O
entity__ 
.__ 
Property__ #
(__# $
e__$ %
=>__& (
e__) *
.__* +
Email__+ 0
)__0 1
.__1 2

IsRequired__2 <
(__< =
)__= >
.__> ?
HasMaxLength__? K
(__K L
$num__L N
)__N O
;__O P
entity`` 
.`` 
Property`` #
(``# $
e``$ %
=>``& (
e``) *
.``* +
PhoneNumber``+ 6
)``6 7
.``7 8

IsRequired``8 B
(``B C
)``C D
;``D E
}bb 
)bb 
;bb 
}cc 	
}dd 
}ee ˆî
bD:\Facultate\dotnet\RealEstateManagement\Infrastructure\Migrations\20241111144500_InitialCreate.cs
	namespace 	
Infrastructure
 
. 

Migrations #
{ 
public

 

partial

 
class

 
InitialCreate

 &
:

' (
	Migration

) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterDatabase *
(* +
)+ ,
. 

Annotation 
( 
$str @
,@ A
$strB F
)F G
;G H
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
UserId 
= 
table "
." #
Column# )
<) *
Guid* .
>. /
(/ 0
type0 4
:4 5
$str6 <
,< =
nullable> F
:F G
falseH M
,M N
defaultValueSqlO ^
:^ _
$str` t
)t u
,u v
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 M
,M N
	maxLengthO X
:X Y
$numZ \
,\ ]
nullable^ f
:f g
falseh m
)m n
,n o
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 N
,N O
	maxLengthP Y
:Y Z
$num[ ]
,] ^
nullable_ g
:g h
falsei n
)n o
,o p
PhoneNumber 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= C
,C D
nullableE M
:M N
falseO T
)T U
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
UserId8 >
)> ?
;? @
} 
) 
; 
migrationBuilder   
.   
CreateTable   (
(  ( )
name!! 
:!! 
$str!! '
,!!' (
columns"" 
:"" 
table"" 
=>"" !
new""" %
{## 
	InquiryId$$ 
=$$ 
table$$  %
.$$% &
Column$$& ,
<$$, -
Guid$$- 1
>$$1 2
($$2 3
type$$3 7
:$$7 8
$str$$9 ?
,$$? @
nullable$$A I
:$$I J
false$$K P
,$$P Q
defaultValueSql$$R a
:$$a b
$str$$c w
)$$w x
,$$x y
ClientId%% 
=%% 
table%% $
.%%$ %
Column%%% +
<%%+ ,
Guid%%, 0
>%%0 1
(%%1 2
type%%2 6
:%%6 7
$str%%8 >
,%%> ?
nullable%%@ H
:%%H I
false%%J O
)%%O P
,%%P Q
Types&& 
=&& 
table&& !
.&&! "
Column&&" (
<&&( )
List&&) -
<&&- .
string&&. 4
>&&4 5
>&&5 6
(&&6 7
type&&7 ;
:&&; <
$str&&= E
,&&E F
nullable&&G O
:&&O P
false&&Q V
)&&V W
,&&W X
MinPrice'' 
='' 
table'' $
.''$ %
Column''% +
<''+ ,
double'', 2
>''2 3
(''3 4
type''4 8
:''8 9
$str'': L
,''L M
nullable''N V
:''V W
false''X ]
)''] ^
,''^ _
MaxPrice(( 
=(( 
table(( $
.(($ %
Column((% +
<((+ ,
double((, 2
>((2 3
(((3 4
type((4 8
:((8 9
$str((: L
,((L M
nullable((N V
:((V W
false((X ]
)((] ^
,((^ _
MinSquareFootage)) $
=))% &
table))' ,
.)), -
Column))- 3
<))3 4
double))4 :
>)): ;
()); <
type))< @
:))@ A
$str))B T
,))T U
nullable))V ^
:))^ _
false))` e
)))e f
,))f g
MaxSquareFootage** $
=**% &
table**' ,
.**, -
Column**- 3
<**3 4
double**4 :
>**: ;
(**; <
type**< @
:**@ A
$str**B T
,**T U
nullable**V ^
:**^ _
false**` e
)**e f
,**f g
NumberOfBedrooms++ $
=++% &
table++' ,
.++, -
Column++- 3
<++3 4
double++4 :
>++: ;
(++; <
type++< @
:++@ A
$str++B T
,++T U
nullable++V ^
:++^ _
false++` e
)++e f
,++f g
NumberOfBathrooms,, %
=,,& '
table,,( -
.,,- .
Column,,. 4
<,,4 5
double,,5 ;
>,,; <
(,,< =
type,,= A
:,,A B
$str,,C U
,,,U V
nullable,,W _
:,,_ `
false,,a f
),,f g
,,,g h
UserId-- 
=-- 
table-- "
.--" #
Column--# )
<--) *
Guid--* .
>--. /
(--/ 0
type--0 4
:--4 5
$str--6 <
,--< =
nullable--> F
:--F G
true--H L
)--L M
}.. 
,.. 
constraints// 
:// 
table// "
=>//# %
{00 
table11 
.11 

PrimaryKey11 $
(11$ %
$str11% 9
,119 :
x11; <
=>11= ?
x11@ A
.11A B
	InquiryId11B K
)11K L
;11L M
table22 
.22 

ForeignKey22 $
(22$ %
name33 
:33 
$str33 ?
,33? @
column44 
:44 
x44  !
=>44" $
x44% &
.44& '
UserId44' -
,44- .
principalTable55 &
:55& '
$str55( /
,55/ 0
principalColumn66 '
:66' (
$str66) 1
)661 2
;662 3
}77 
)77 
;77 
migrationBuilder99 
.99 
CreateTable99 (
(99( )
name:: 
::: 
$str:: (
,::( )
columns;; 
:;; 
table;; 
=>;; !
new;;" %
{<< 

PropertyId== 
===  
table==! &
.==& '
Column==' -
<==- .
Guid==. 2
>==2 3
(==3 4
type==4 8
:==8 9
$str==: @
,==@ A
nullable==B J
:==J K
false==L Q
,==Q R
defaultValueSql==S b
:==b c
$str==d x
)==x y
,==y z
Address>> 
=>> 
table>> #
.>># $
Column>>$ *
<>>* +
string>>+ 1
>>>1 2
(>>2 3
type>>3 7
:>>7 8
$str>>9 Q
,>>Q R
	maxLength>>S \
:>>\ ]
$num>>^ a
,>>a b
nullable>>c k
:>>k l
false>>m r
)>>r s
,>>s t
Type?? 
=?? 
table??  
.??  !
Column??! '
<??' (
string??( .
>??. /
(??/ 0
type??0 4
:??4 5
$str??6 <
,??< =
nullable??> F
:??F G
false??H M
)??M N
,??N O
Price@@ 
=@@ 
table@@ !
.@@! "
Column@@" (
<@@( )
double@@) /
>@@/ 0
(@@0 1
type@@1 5
:@@5 6
$str@@7 I
,@@I J
nullable@@K S
:@@S T
false@@U Z
)@@Z [
,@@[ \
SquareFootageAA !
=AA" #
tableAA$ )
.AA) *
ColumnAA* 0
<AA0 1
doubleAA1 7
>AA7 8
(AA8 9
typeAA9 =
:AA= >
$strAA? Q
,AAQ R
nullableAAS [
:AA[ \
falseAA] b
)AAb c
,AAc d
NumberOfBedroomsBB $
=BB% &
tableBB' ,
.BB, -
ColumnBB- 3
<BB3 4
doubleBB4 :
>BB: ;
(BB; <
typeBB< @
:BB@ A
$strBBB T
,BBT U
nullableBBV ^
:BB^ _
falseBB` e
)BBe f
,BBf g
NumberOfBathroomsCC %
=CC& '
tableCC( -
.CC- .
ColumnCC. 4
<CC4 5
doubleCC5 ;
>CC; <
(CC< =
typeCC= A
:CCA B
$strCCC U
,CCU V
nullableCCW _
:CC_ `
falseCCa f
)CCf g
,CCg h
DescriptionDD 
=DD  !
tableDD" '
.DD' (
ColumnDD( .
<DD. /
stringDD/ 5
>DD5 6
(DD6 7
typeDD7 ;
:DD; <
$strDD= U
,DDU V
	maxLengthDDW `
:DD` a
$numDDb e
,DDe f
nullableDDg o
:DDo p
falseDDq v
)DDv w
,DDw x
StatusEE 
=EE 
tableEE "
.EE" #
ColumnEE# )
<EE) *
stringEE* 0
>EE0 1
(EE1 2
typeEE2 6
:EE6 7
$strEE8 >
,EE> ?
nullableEE@ H
:EEH I
falseEEJ O
)EEO P
,EEP Q
ListingDateFF 
=FF  !
tableFF" '
.FF' (
ColumnFF( .
<FF. /
DateTimeFF/ 7
>FF7 8
(FF8 9
typeFF9 =
:FF= >
$strFF? Y
,FFY Z
nullableFF[ c
:FFc d
falseFFe j
)FFj k
,FFk l
	ImageURLsGG 
=GG 
tableGG  %
.GG% &
ColumnGG& ,
<GG, -
stringGG- 3
>GG3 4
(GG4 5
typeGG5 9
:GG9 :
$strGG; A
,GGA B
nullableGGC K
:GGK L
falseGGM R
)GGR S
,GGS T
UserIDHH 
=HH 
tableHH "
.HH" #
ColumnHH# )
<HH) *
GuidHH* .
>HH. /
(HH/ 0
typeHH0 4
:HH4 5
$strHH6 <
,HH< =
nullableHH> F
:HHF G
falseHHH M
)HHM N
}II 
,II 
constraintsJJ 
:JJ 
tableJJ "
=>JJ# %
{KK 
tableLL 
.LL 

PrimaryKeyLL $
(LL$ %
$strLL% :
,LL: ;
xLL< =
=>LL> @
xLLA B
.LLB C

PropertyIdLLC M
)LLM N
;LLN O
tableMM 
.MM 

ForeignKeyMM $
(MM$ %
nameNN 
:NN 
$strNN @
,NN@ A
columnOO 
:OO 
xOO  !
=>OO" $
xOO% &
.OO& '
UserIDOO' -
,OO- .
principalTablePP &
:PP& '
$strPP( /
,PP/ 0
principalColumnQQ '
:QQ' (
$strQQ) 1
,QQ1 2
onDeleteRR  
:RR  !
ReferentialActionRR" 3
.RR3 4
CascadeRR4 ;
)RR; <
;RR< =
}SS 
)SS 
;SS 
migrationBuilderUU 
.UU 
CreateTableUU (
(UU( )
nameVV 
:VV 
$strVV $
,VV$ %
columnsWW 
:WW 
tableWW 
=>WW !
newWW" %
{XX 
TransactionIdYY !
=YY" #
tableYY$ )
.YY) *
ColumnYY* 0
<YY0 1
GuidYY1 5
>YY5 6
(YY6 7
typeYY7 ;
:YY; <
$strYY= C
,YYC D
nullableYYE M
:YYM N
falseYYO T
,YYT U
defaultValueSqlYYV e
:YYe f
$strYYg {
)YY{ |
,YY| }

PropertyIdZZ 
=ZZ  
tableZZ! &
.ZZ& '
ColumnZZ' -
<ZZ- .
GuidZZ. 2
>ZZ2 3
(ZZ3 4
typeZZ4 8
:ZZ8 9
$strZZ: @
,ZZ@ A
nullableZZB J
:ZZJ K
falseZZL Q
)ZZQ R
,ZZR S
BuyerId[[ 
=[[ 
table[[ #
.[[# $
Column[[$ *
<[[* +
Guid[[+ /
>[[/ 0
([[0 1
type[[1 5
:[[5 6
$str[[7 =
,[[= >
nullable[[? G
:[[G H
false[[I N
)[[N O
,[[O P
SellerId\\ 
=\\ 
table\\ $
.\\$ %
Column\\% +
<\\+ ,
Guid\\, 0
>\\0 1
(\\1 2
type\\2 6
:\\6 7
$str\\8 >
,\\> ?
nullable\\@ H
:\\H I
false\\J O
)\\O P
,\\P Q
	SalePrice]] 
=]] 
table]]  %
.]]% &
Column]]& ,
<]], -
double]]- 3
>]]3 4
(]]4 5
type]]5 9
:]]9 :
$str]]; M
,]]M N
nullable]]O W
:]]W X
false]]Y ^
)]]^ _
,]]_ `
Status^^ 
=^^ 
table^^ "
.^^" #
Column^^# )
<^^) *
string^^* 0
>^^0 1
(^^1 2
type^^2 6
:^^6 7
$str^^8 >
,^^> ?
nullable^^@ H
:^^H I
false^^J O
)^^O P
}__ 
,__ 
constraints`` 
:`` 
table`` "
=>``# %
{aa 
tablebb 
.bb 

PrimaryKeybb $
(bb$ %
$strbb% 6
,bb6 7
xbb8 9
=>bb: <
xbb= >
.bb> ?
TransactionIdbb? L
)bbL M
;bbM N
tablecc 
.cc 

ForeignKeycc $
(cc$ %
namedd 
:dd 
$strdd K
,ddK L
columnee 
:ee 
xee  !
=>ee" $
xee% &
.ee& '

PropertyIdee' 1
,ee1 2
principalTableff &
:ff& '
$strff( :
,ff: ;
principalColumngg '
:gg' (
$strgg) 5
,gg5 6
onDeletehh  
:hh  !
ReferentialActionhh" 3
.hh3 4
Cascadehh4 ;
)hh; <
;hh< =
tableii 
.ii 

ForeignKeyii $
(ii$ %
namejj 
:jj 
$strjj =
,jj= >
columnkk 
:kk 
xkk  !
=>kk" $
xkk% &
.kk& '
BuyerIdkk' .
,kk. /
principalTablell &
:ll& '
$strll( /
,ll/ 0
principalColumnmm '
:mm' (
$strmm) 1
,mm1 2
onDeletenn  
:nn  !
ReferentialActionnn" 3
.nn3 4
Cascadenn4 ;
)nn; <
;nn< =
tableoo 
.oo 

ForeignKeyoo $
(oo$ %
namepp 
:pp 
$strpp >
,pp> ?
columnqq 
:qq 
xqq  !
=>qq" $
xqq% &
.qq& '
SellerIdqq' /
,qq/ 0
principalTablerr &
:rr& '
$strrr( /
,rr/ 0
principalColumnss '
:ss' (
$strss) 1
,ss1 2
onDeletett  
:tt  !
ReferentialActiontt" 3
.tt3 4
Cascadett4 ;
)tt; <
;tt< =
}uu 
)uu 
;uu 
migrationBuilderww 
.ww 
CreateIndexww (
(ww( )
namexx 
:xx 
$strxx 1
,xx1 2
tableyy 
:yy 
$stryy (
,yy( )
columnzz 
:zz 
$strzz  
)zz  !
;zz! "
migrationBuilder|| 
.|| 
CreateIndex|| (
(||( )
name}} 
:}} 
$str}} 2
,}}2 3
table~~ 
:~~ 
$str~~ )
,~~) *
column 
: 
$str  
)  !
;! "
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateIndex
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ /
,
ÇÇ/ 0
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ %
,
ÉÉ% &
column
ÑÑ 
:
ÑÑ 
$str
ÑÑ !
)
ÑÑ! "
;
ÑÑ" #
migrationBuilder
ÜÜ 
.
ÜÜ 
CreateIndex
ÜÜ (
(
ÜÜ( )
name
áá 
:
áá 
$str
áá 2
,
áá2 3
table
àà 
:
àà 
$str
àà %
,
àà% &
column
ââ 
:
ââ 
$str
ââ $
)
ââ$ %
;
ââ% &
migrationBuilder
ãã 
.
ãã 
CreateIndex
ãã (
(
ãã( )
name
åå 
:
åå 
$str
åå 0
,
åå0 1
table
çç 
:
çç 
$str
çç %
,
çç% &
column
éé 
:
éé 
$str
éé "
)
éé" #
;
éé# $
}
èè 	
	protected
íí 
override
íí 
void
íí 
Down
íí  $
(
íí$ %
MigrationBuilder
íí% 5
migrationBuilder
íí6 F
)
ííF G
{
ìì 	
migrationBuilder
îî 
.
îî 
	DropTable
îî &
(
îî& '
name
ïï 
:
ïï 
$str
ïï '
)
ïï' (
;
ïï( )
migrationBuilder
óó 
.
óó 
	DropTable
óó &
(
óó& '
name
òò 
:
òò 
$str
òò $
)
òò$ %
;
òò% &
migrationBuilder
öö 
.
öö 
	DropTable
öö &
(
öö& '
name
õõ 
:
õõ 
$str
õõ (
)
õõ( )
;
õõ) *
migrationBuilder
ùù 
.
ùù 
	DropTable
ùù &
(
ùù& '
name
ûû 
:
ûû 
$str
ûû 
)
ûû 
;
ûû 
}
üü 	
}
†† 
}°° æ
ND:\Facultate\dotnet\RealEstateManagement\Infrastructure\DependencyInjection.cs
	namespace 	
Infrastructure
 
{		 
public

 

static

 
class

 
DependencyInjection

 +
{ 
public 
static 
IServiceCollection (
AddInfrastructure) :
(: ;
this; ?
IServiceCollection@ R
servicesS [
,[ \
IConfiguration] k
configurationl y
)y z
{ 	
services 
. 
AddDbContext !
<! " 
ApplicationDbContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
	UseNpgsql !
(! "
configuration !
.! "
GetConnectionString" 5
(5 6
$str6 I
)I J
,J K
b 
=> 
b 
. 
MigrationsAssembly -
(- .
typeof. 4
(4 5 
ApplicationDbContext5 I
)I J
.J K
AssemblyK S
.S T
FullNameT \
)\ ]
)] ^
)^ _
;_ `
services 
. 
	AddScoped 
< &
IPropertyListingRepository 9
,9 :%
PropertyListingRepository; T
>T U
(U V
)V W
;W X
services 
. 
	AddScoped 
< $
IClientInquiryRepository 7
,7 8#
ClientInquiryRepository9 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< "
ITransactionRepository 5
,5 6!
TransactionRepository7 L
>L M
(M N
)N O
;O P
services 
. 
	AddScoped 
< 
IUserRepository .
,. /
UserRepository0 >
>> ?
(? @
)@ A
;A B
return 
services 
; 
} 	
} 
} 