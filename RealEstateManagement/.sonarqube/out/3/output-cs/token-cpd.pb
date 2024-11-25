ú
pC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Repositories\UserRepository.cs
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
}(( îO
wC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Repositories\TransactionRepository.cs
	namespace 	
Infrastructure
 
. 
Repositories %
{ 
public		 

class		 !
TransactionRepository		 &
:		' ("
ITransactionRepository		) ?
{

 
private 
readonly  
ApplicationDbContext -
context. 5
;5 6
public !
TransactionRepository $
($ % 
ApplicationDbContext% 9
context: A
)A B
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
< 
Result  
<  !
IEnumerable! ,
<, -
Transaction- 8
>8 9
>9 :
>: ;#
GetAllTransactionsAsync< S
(S T
)T U
{ 	
try 
{ 
var 
transactions  
=! "
await# (
context) 0
.0 1
Transactions1 =
.= >
ToListAsync> I
(I J
)J K
;K L
return 
Result 
< 
IEnumerable )
<) *
Transaction* 5
>5 6
>6 7
.7 8
Success8 ?
(? @
transactions@ L
)L M
;M N
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Result 
< 
IEnumerable )
<) *
Transaction* 5
>5 6
>6 7
.7 8
Failure8 ?
(? @
$"@ B
$strB s
{s t
ext v
.v w
Messagew ~
}~ 
"	 Ä
)
Ä Å
;
Å Ç
} 
} 	
public 
async 
Task 
< 
Result  
<  !
Transaction! ,
>, -
>- .#
GetTransactionByIdAsync/ F
(F G
GuidG K
idL N
)N O
{ 	
try   
{!! 
var"" 
transaction"" 
=""  !
await""" '
context""( /
.""/ 0
Transactions""0 <
.""< =
	FindAsync""= F
(""F G
id""G I
)""I J
;""J K
return## 
Result## 
<## 
Transaction## )
>##) *
.##* +
Success##+ 2
(##2 3
transaction##3 >
)##> ?
;##? @
}$$ 
catch%% 
(%% 
	Exception%% 
ex%% 
)%%  
{&& 
return'' 
Result'' 
<'' 
Transaction'' )
>'') *
.''* +
Failure''+ 2
(''2 3
$"''3 5
$str''5 e
{''e f
ex''f h
.''h i
Message''i p
}''p q
"''q r
)''r s
;''s t
}(( 
})) 	
public,, 
async,, 
Task,, 
<,, 
Transaction,, %
>,,% &
AddTransactionAsync,,' :
(,,: ;
Transaction,,; F
transaction,,G R
),,R S
{-- 	
await.. 
context.. 
... 
Transactions.. &
...& '
AddAsync..' /
(../ 0
transaction..0 ;
)..; <
;..< =
await// 
context// 
.// 
SaveChangesAsync// *
(//* +
)//+ ,
;//, -
return00 
transaction00 
;00 
}11 	
public33 
async33 
Task33 "
UpdateTransactionAsync33 0
(330 1
Transaction331 <
transaction33= H
)33H I
{44 	
var55 
existingTransaction55 #
=55$ %
await55& +
context55, 3
.553 4
Transactions554 @
.55@ A
	FindAsync55A J
(55J K
transaction55K V
.55V W
TransactionId55W d
)55d e
;55e f
if66 
(66 
existingTransaction66 #
!=66$ &
null66' +
)66+ ,
{77 
existingTransaction88 #
.88# $

PropertyId88$ .
=88/ 0
transaction881 <
.88< =

PropertyId88= G
;88G H
existingTransaction99 #
.99# $
BuyerId99$ +
=99, -
transaction99. 9
.999 :
BuyerId99: A
;99A B
existingTransaction:: #
.::# $
SellerId::$ ,
=::- .
transaction::/ :
.::: ;
SellerId::; C
;::C D
existingTransaction;; #
.;;# $
	SalePrice;;$ -
=;;. /
transaction;;0 ;
.;;; <
	SalePrice;;< E
;;;E F
existingTransaction<< #
.<<# $
Status<<$ *
=<<+ ,
transaction<<- 8
.<<8 9
Status<<9 ?
;<<? @
context>> 
.>> 
Transactions>> $
.>>$ %
Update>>% +
(>>+ ,
existingTransaction>>, ?
)>>? @
;>>@ A
await?? 
context?? 
.?? 
SaveChangesAsync?? .
(??. /
)??/ 0
;??0 1
}@@ 
elseAA 
{BB 
throwCC 
newCC 
	ExceptionCC #
(CC# $
$"CC$ &
$strCC& :
{CC: ;
transactionCC; F
.CCF G
TransactionIdCCG T
}CCT U
$strCCU `
"CC` a
)CCa b
;CCb c
}DD 
}EE 	
publicGG 
asyncGG 
TaskGG "
DeleteTransactionAsyncGG 0
(GG0 1
GuidGG1 5
idGG6 8
)GG8 9
{HH 	
varII 
transactionII 
=II 
awaitII #
contextII$ +
.II+ ,
TransactionsII, 8
.II8 9
	FindAsyncII9 B
(IIB C
idIIC E
)IIE F
;IIF G
ifJJ 
(JJ 
transactionJJ 
!=JJ 
nullJJ #
)JJ# $
{KK 
contextLL 
.LL 
TransactionsLL $
.LL$ %
RemoveLL% +
(LL+ ,
transactionLL, 7
)LL7 8
;LL8 9
awaitMM 
contextMM 
.MM 
SaveChangesAsyncMM .
(MM. /
)MM/ 0
;MM0 1
}NN 
elseOO 
{PP 
throwQQ 
newQQ 
	ExceptionQQ #
(QQ# $
$"QQ$ &
$strQQ& :
{QQ: ;
idQQ; =
}QQ= >
$strQQ> I
"QQI J
)QQJ K
;QQK L
}RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ResultUU  
<UU  !
TransactionUU! ,
>UU, -
>UU- .+
GetTransactionByPropertyIdAsyncUU/ N
(UUN O
GuidUUO S
idUUT V
)UUV W
{VV 	
tryWW 
{XX 
varYY 
transactionYY 
=YY  !
awaitYY" '
contextYY( /
.YY/ 0
TransactionsYY0 <
.YY< =
FirstOrDefaultAsyncYY= P
(YYP Q
tYYQ R
=>YYS U
tYYV W
.YYW X

PropertyIdYYX b
==YYc e
idYYf h
)YYh i
;YYi j
ifZZ 
(ZZ 
transactionZZ 
!=ZZ  "
nullZZ# '
)ZZ' (
{[[ 
return\\ 
Result\\ !
<\\! "
Transaction\\" -
>\\- .
.\\. /
Success\\/ 6
(\\6 7
transaction\\7 B
)\\B C
;\\C D
}]] 
return^^ 
Result^^ 
<^^ 
Transaction^^ )
>^^) *
.^^* +
Failure^^+ 2
(^^2 3
$str^^3 K
)^^K L
;^^L M
}__ 
catch`` 
(`` 
	Exception`` 
ex`` 
)``  
{aa 
returnbb 
Resultbb 
<bb 
Transactionbb )
>bb) *
.bb* +
Failurebb+ 2
(bb2 3
$"bb3 5
$strbb5 i
{bbi j
exbbj l
.bbl m
Messagebbm t
}bbt u
"bbu v
)bbv w
;bbw x
}cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IEnumerableff %
<ff% &
Transactionff& 1
>ff1 2
>ff2 3$
GetTransactionsByBuyerIdff4 L
(ffL M
GuidffM Q
userIdffR X
)ffX Y
{gg 	
returnhh 
awaithh 
contexthh  
.hh  !
Transactionshh! -
.hh- .
Wherehh. 3
(hh3 4
thh4 5
=>hh6 8
thh9 :
.hh: ;
BuyerIdhh; B
==hhC E
userIdhhF L
)hhL M
.hhM N
ToListAsynchhN Y
(hhY Z
)hhZ [
;hh[ \
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
IEnumerablekk %
<kk% &
Transactionkk& 1
>kk1 2
>kk2 3%
GetTransactionsBySellerIdkk4 M
(kkM N
GuidkkN R
userIdkkS Y
)kkY Z
{ll 	
returnmm 
awaitmm 
contextmm  
.mm  !
Transactionsmm! -
.mm- .
Wheremm. 3
(mm3 4
tmm4 5
=>mm6 8
tmm9 :
.mm: ;
SellerIdmm; C
==mmD F
userIdmmG M
)mmM N
.mmN O
ToListAsyncmmO Z
(mmZ [
)mm[ \
;mm\ ]
}nn 	
}oo 
}pp Ÿ:
{C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Repositories\PropertyListingRepository.cs
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
}\\ çD
yC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Repositories\ClientInquiryRepository.cs
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
.    !
Where  ! &
(  & '
inquiry  ' .
=>  / 1
inquiry  2 9
.  9 :
ClientId  : B
==  C E
userId  F L
)  L M
.!!  !
ToListAsync!!! ,
(!!, -
)!!- .
;!!. /
}"" 	
public## 
async## 
Task## 
<## 
Result##  
<##  !
Guid##! %
>##% &
>##& '
AddInquiryAsync##( 7
(##7 8
ClientInquiry##8 E
inquiry##F M
)##M N
{$$ 	
try%% 
{&& 
await'' 
context'' 
.'' 
ClientInquiries'' -
.''- .
AddAsync''. 6
(''6 7
inquiry''7 >
)''> ?
;''? @
await(( 
context(( 
.(( 
SaveChangesAsync(( .
(((. /
)((/ 0
;((0 1
return)) 
Result)) 
<)) 
Guid)) "
>))" #
.))# $
Success))$ +
())+ ,
inquiry)), 3
.))3 4
	InquiryId))4 =
)))= >
;))> ?
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++  
{,, 
var-- 
errorMessage--  
=--! "
ex--# %
.--% &
InnerException--& 4
!=--5 7
null--8 <
?--= >
ex--? A
.--A B
InnerException--B P
.--P Q
ToString--Q Y
(--Y Z
)--Z [
:--\ ]
ex--^ `
.--` a
Message--a h
;--h i
return.. 
Result.. 
<.. 
Guid.. "
>.." #
...# $
Failure..$ +
(..+ ,
errorMessage.., 8
)..8 9
;..9 :
}// 
}00 	
public11 
async11 
Task11 
<11 
Result11  
<11  !
Guid11! %
>11% &
>11& '
UpdateInquiryAsync11( :
(11: ;
ClientInquiry11; H
inquiry11I P
)11P Q
{22 	
try33 
{44 
var55 
existingInquiry55 #
=55$ %
await55& +
context55, 3
.553 4
ClientInquiries554 C
.55C D
	FindAsync55D M
(55M N
inquiry55N U
.55U V
	InquiryId55V _
)55_ `
;55` a
if66 
(66 
existingInquiry66 #
!=66$ &
null66' +
)66+ ,
{77 
context88 
.88 
Entry88 !
(88! "
existingInquiry88" 1
)881 2
.882 3
CurrentValues883 @
.88@ A
	SetValues88A J
(88J K
inquiry88K R
)88R S
;88S T
await99 
context99 !
.99! "
SaveChangesAsync99" 2
(992 3
)993 4
;994 5
return;; 
Result;; !
<;;! "
Guid;;" &
>;;& '
.;;' (
Success;;( /
(;;/ 0
inquiry;;0 7
.;;7 8
	InquiryId;;8 A
);;A B
;;;B C
}<< 
else== 
{>> 
return?? 
Result?? !
<??! "
Guid??" &
>??& '
.??' (
Failure??( /
(??/ 0
$str??0 D
)??D E
;??E F
}@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
varDD 
errorMessageDD  
=DD! "
exDD# %
.DD% &
InnerExceptionDD& 4
!=DD5 7
nullDD8 <
?DD= >
exDD? A
.DDA B
InnerExceptionDDB P
.DDP Q
MessageDDQ X
:DDY Z
exDD[ ]
.DD] ^
MessageDD^ e
;DDe f
returnEE 
ResultEE 
<EE 
GuidEE "
>EE" #
.EE# $
FailureEE$ +
(EE+ ,
errorMessageEE, 8
)EE8 9
;EE9 :
}FF 
}GG 	
publicHH 
asyncHH 
TaskHH 
<HH 
ResultHH  
<HH  !
GuidHH! %
>HH% &
>HH& '
DeleteInquiryAsyncHH( :
(HH: ;
GuidHH; ?
idHH@ B
)HHB C
{II 	
tryJJ 
{KK 
varLL 
inquiryLL 
=LL 
awaitLL #
contextLL$ +
.LL+ ,
ClientInquiriesLL, ;
.LL; <
	FindAsyncLL< E
(LLE F
idLLF H
)LLH I
;LLI J
ifMM 
(MM 
inquiryMM 
!=MM 
nullMM #
)MM# $
{NN 
contextOO 
.OO 
ClientInquiriesOO +
.OO+ ,
RemoveOO, 2
(OO2 3
inquiryOO3 :
)OO: ;
;OO; <
awaitPP 
contextPP !
.PP! "
SaveChangesAsyncPP" 2
(PP2 3
)PP3 4
;PP4 5
returnQQ 
ResultQQ !
<QQ! "
GuidQQ" &
>QQ& '
.QQ' (
SuccessQQ( /
(QQ/ 0
idQQ0 2
)QQ2 3
;QQ3 4
}RR 
returnSS 
ResultSS 
<SS 
GuidSS "
>SS" #
.SS# $
FailureSS$ +
(SS+ ,
$strSS, ?
)SS? @
;SS@ A
}TT 
catchUU 
(UU 
	ExceptionUU 
exUU 
)UU  
{VV 
varWW 
errorMessageWW  
=WW! "
exWW# %
.WW% &
InnerExceptionWW& 4
!=WW5 7
nullWW8 <
?WW= >
exWW? A
.WWA B
InnerExceptionWWB P
.WWP Q
ToStringWWQ Y
(WWY Z
)WWZ [
:WW\ ]
exWW^ `
.WW` a
MessageWWa h
;WWh i
returnXX 
ResultXX 
<XX 
GuidXX "
>XX" #
.XX# $
FailureXX$ +
(XX+ ,
errorMessageXX, 8
)XX8 9
;XX9 :
}YY 
}ZZ 	
}[[ 
}\\ ¸c
uC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Persistance\ApplicationDbContext.cs
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
}ee êï
|C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\Migrations\20241111115529_InitialCreate.cs
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
}°° ÿ
hC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Infrastructure\DependencyInjection.cs
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