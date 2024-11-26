<<<<<<< Updated upstream
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
=======
Í
MC:\Users\cezar\Desktop\RealEstateManagement\Application\ValidationBehavior.cs
	namespace 	
Application
 
{ 
public 

class 
ValidationBehavior #
<# $
TRequest$ ,
,, -
	TResponse. 7
>7 8
:9 :
IPipelineBehavior; L
<L M
TRequestM U
,U V
	TResponseW `
>` a
whereb g
TRequesth p
:q r
IRequests {
<{ |
	TResponse	| Ö
>
Ö Ü
{ 
private 
readonly 
IEnumerable $
<$ %

IValidator% /
</ 0
TRequest0 8
>8 9
>9 :

validators; E
;E F
public

 
ValidationBehavior

 !
(

! "
IEnumerable

" -
<

- .

IValidator

. 8
<

8 9
TRequest

9 A
>

A B
>

B C

validators

D N
)

N O
{ 	
this 
. 

validators 
= 

validators (
;( )
} 	
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< ="
RequestHandlerDelegate> T
<T U
	TResponseU ^
>^ _
next` d
,d e
CancellationTokenf w
cancellationToken	x â
)
â ä
{ 	
var 
context 
= 
new 
ValidationContext /
</ 0
TRequest0 8
>8 9
(9 :
request: A
)A B
;B C
var 
failures 
= 

validators %
. 
Select 
( 
v 
=> 
v 
. 
Validate '
(' (
context( /
)/ 0
)0 1
. 

SelectMany 
( 
result "
=># %
result& ,
., -
Errors- 3
)3 4
. 
Where 
( 
f 
=> 
f 
!=  
null! %
)% &
. 
ToList 
( 
) 
; 
if 
( 
failures 
. 
Count 
!=  
$num! "
)" #
{ 
throw 
new 
ValidationException -
(- .
failures. 6
)6 7
;7 8
} 
return 
await 
next 
( 
) 
;  
} 	
} 
} „
LC:\Users\cezar\Desktop\RealEstateManagement\Application\utils\PagedResult.cs
	namespace 	
Application
 
. 
Utils 
{ 
public 

class 
PagedResult 
< 
T 
> 
{ 
public 
PagedResult 
( 
List 
<  
T  !
>! "
data# '
,' (
int) ,

totalCount- 7
)7 8
{ 	
Data 
= 
data 
; 

TotalCount 
= 

totalCount #
;# $
}		 	
public 
List 
< 
T 
> 
Data 
{ 
get !
;! "
}# $
public 
int 

TotalCount 
{ 
get  #
;# $
}% &
} 
} ¬
OC:\Users\cezar\Desktop\RealEstateManagement\Application\utils\MappingProfile.cs
	namespace 	
Application
 
. 
utils 
{ 
public		 

class		 
MappingProfile		 
:		  
Profile		! (
{

 
public 
MappingProfile 
( 
) 
{ 	
	CreateMap 
< 
PropertyListing %
,% &
PropertyListingDto' 9
>9 :
(: ;
); <
.< =

ReverseMap= G
(G H
)H I
;I J
	CreateMap 
< 
ClientInquiry #
,# $
ClientInquiryDto% 5
>5 6
(6 7
)7 8
.8 9

ReverseMap9 C
(C D
)D E
;E F
	CreateMap 
< 
Transaction !
,! "
TransactionDto# 1
>1 2
(2 3
)3 4
.4 5

ReverseMap5 ?
(? @
)@ A
;A B
	CreateMap 
< 
User 
, 
UserDto #
># $
($ %
)% &
.& '

ReverseMap' 1
(1 2
)2 3
;3 4
	CreateMap 
< (
CreatePropertyListingCommand 2
,2 3
PropertyListing4 C
>C D
(D E
)E F
.F G

ReverseMapG Q
(Q R
)R S
;S T
	CreateMap 
< (
UpdatePropertyListingCommand 2
,2 3
PropertyListing4 C
>C D
(D E
)E F
.F G

ReverseMapG Q
(Q R
)R S
;S T
	CreateMap 
< &
CreateClientInquiryCommand 0
,0 1
ClientInquiry2 ?
>? @
(@ A
)A B
.B C

ReverseMapC M
(M N
)N O
;O P
	CreateMap 
< &
UpdateClientInquiryCommand 0
,0 1
ClientInquiry2 ?
>? @
(@ A
)A B
.B C

ReverseMapC M
(M N
)N O
;O P
} 	
} 
} ∂
xC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionsBySellerIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
Queries- 4
{ 
public 

class *
GetTransactionsBySellerIdQuery /
:0 1
IRequest2 :
<: ;
Result; A
<A B
PagedResultB M
<M N
TransactionDtoN \
>\ ]
>] ^
>^ _
{		 
public

 
Guid

 
SellerId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
Page 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ≥
wC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionsByBuyerIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
Queries- 4
{ 
public 

class )
GetTransactionsByBuyerIdQuery .
:/ 0
IRequest1 9
<9 :
Result: @
<@ A
PagedResultA L
<L M
TransactionDtoM [
>[ \
>\ ]
>] ^
{		 
public

 
Guid

 
BuyerId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
int 
Page 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
} 
} É
yC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionByPropertyIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
Queries- 4
{ 
public 

class +
GetTransactionByPropertyIdQuery 0
:1 2
IRequest3 ;
<; <
Result< B
<B C
TransactionDtoC Q
>Q R
>R S
{ 
public		 
Guid		 

PropertyId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
int

 
Page

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
} 
} »
qC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionByIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
Queries- 4
{ 
public 

class #
GetTransactionByIdQuery (
:) *
IRequest+ 3
<3 4
Result4 :
<: ;
TransactionDto; I
>I J
>J K
{ 
public		 
Guid		 
TransactionId		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
}

 
} Ÿ
qC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetAllTransactionsQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
Queries- 4
{ 
public 

class #
GetAllTransactionsQuery (
:) *
IRequest+ 3
<3 4
Result4 :
<: ;
List; ?
<? @
TransactionDto@ N
>N O
>O P
>P Q
{ 
}		 
}

 ˘
áC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionsBySellerIdQueryHandler.cs
	namespace

 	
Application


 
.

 
	Use_Cases

 
.

  
Transactions

  ,
.

, -
QueriesHandlers

- <
{ 
internal 
class 0
$GetTransactionBySellerIdQueryHandler 7
:8 9
IRequestHandler: I
<I J*
GetTransactionsBySellerIdQueryJ h
,h i
Resultj p
<p q
PagedResultq |
<| }
TransactionDto	} ã
>
ã å
>
å ç
>
ç é
{ 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
public 0
$GetTransactionBySellerIdQueryHandler 3
(3 4
IMapper4 ;
mapper< B
,B C"
ITransactionRepositoryD Z

repository[ e
)e f
{ 	
this 
. 
mapper 
= 
mapper  
;  !
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
Result  
<  !
PagedResult! ,
<, -
TransactionDto- ;
>; <
>< =
>= >
Handle? E
(E F*
GetTransactionsBySellerIdQueryF d
requeste l
,l m
CancellationTokenn 
cancellationToken
Ä ë
)
ë í
{ 	
var 
transactions 
= 
await $

repository% /
./ 0%
GetTransactionsBySellerId0 I
(I J
requestJ Q
.Q R
SellerIdR Z
)Z [
;[ \
var 
query 
= 
transactions $
.$ %
AsQueryable% 0
(0 1
)1 2
;2 3
var 
pagedTransactions !
=" #
query$ )
.) *
ApplyPaging* 5
(5 6
request6 =
.= >
Page> B
,B C
requestD K
.K L
PageSizeL T
)T U
;U V
var 
transactionsDtos  
=! "
mapper# )
.) *
Map* -
<- .
List. 2
<2 3
TransactionDto3 A
>A B
>B C
(C D
pagedTransactionsD U
)U V
;V W
var 
pagedResult 
= 
new !
PagedResult" -
<- .
TransactionDto. <
>< =
(= >
transactionsDtos> N
,N O
queryP U
.U V
CountV [
([ \
)\ ]
)] ^
;^ _
return 
Result 
< 
PagedResult %
<% &
TransactionDto& 4
>4 5
>5 6
.6 7
Success7 >
(> ?
pagedResult? J
)J K
;K L
}   	
}!! 
}"" Ò
ÜC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionsByBuyerIdQueryHandler.cs
	namespace

 	
Application


 
.

 
	Use_Cases

 
.

  
Transactions

  ,
.

, -
QueriesHandlers

- <
{ 
internal 
class /
#GetTransactionByBuyerIdQueryHandler 6
:7 8
IRequestHandler9 H
<H I)
GetTransactionsByBuyerIdQueryI f
,f g
Resulth n
<n o
PagedResulto z
<z {
TransactionDto	{ â
>
â ä
>
ä ã
>
ã å
{ 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
public /
#GetTransactionByBuyerIdQueryHandler 2
(2 3
IMapper3 :
mapper; A
,A B"
ITransactionRepositoryC Y

repositoryZ d
)d e
{ 	
this 
. 
mapper 
= 
mapper  
;  !
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
Result  
<  !
PagedResult! ,
<, -
TransactionDto- ;
>; <
>< =
>= >
Handle? E
(E F)
GetTransactionsByBuyerIdQueryF c
requestd k
,k l
CancellationTokenm ~
cancellationToken	 ê
)
ê ë
{ 	
var 
transactions 
= 
await $

repository% /
./ 0$
GetTransactionsByBuyerId0 H
(H I
requestI P
.P Q
BuyerIdQ X
)X Y
;Y Z
var 
query 
= 
transactions $
.$ %
AsQueryable% 0
(0 1
)1 2
;2 3
var 
pagedTransactions !
=" #
query$ )
.) *
ApplyPaging* 5
(5 6
request6 =
.= >
Page> B
,B C
requestD K
.K L
PageSizeL T
)T U
;U V
var 
transactionsDtos  
=! "
mapper# )
.) *
Map* -
<- .
List. 2
<2 3
TransactionDto3 A
>A B
>B C
(C D
pagedTransactionsD U
)U V
;V W
var 
pagedResult 
= 
new !
PagedResult" -
<- .
TransactionDto. <
>< =
(= >
transactionsDtos> N
,N O
queryP U
.U V
CountV [
([ \
)\ ]
)] ^
;^ _
return 
Result 
< 
PagedResult %
<% &
TransactionDto& 4
>4 5
>5 6
.6 7
Success7 >
(> ?
pagedResult? J
)J K
;K L
}   	
}!! 
}"" •
àC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionByPropertyIdQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
QueriesHandlers- <
{		 
internal

 
class

 2
&GetTransactionByPropertyIdQueryHandler

 9
:

: ;
IRequestHandler

< K
<

K L+
GetTransactionByPropertyIdQuery

L k
,

k l
Result

m s
<

s t
TransactionDto	

t Ç
>


Ç É
>


É Ñ
{ 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
public 2
&GetTransactionByPropertyIdQueryHandler 5
(5 6
IMapper6 =
mapper> D
,D E"
ITransactionRepositoryF \

repository] g
)g h
{ 	
this 
. 
mapper 
= 
mapper  
;  !
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
Result  
<  !
TransactionDto! /
>/ 0
>0 1
Handle2 8
(8 9+
GetTransactionByPropertyIdQuery9 X
requestY `
,` a
CancellationTokenb s
cancellationToken	t Ö
)
Ö Ü
{ 	
var 
result 
= 
await 

repository )
.) *+
GetTransactionByPropertyIdAsync* I
(I J
requestJ Q
.Q R

PropertyIdR \
)\ ]
;] ^
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
var 
transactionDto "
=# $
mapper% +
.+ ,
Map, /
</ 0
TransactionDto0 >
>> ?
(? @
result@ F
.F G
DataG K
)K L
;L M
return 
Result 
< 
TransactionDto ,
>, -
.- .
Success. 5
(5 6
transactionDto6 D
)D E
;E F
} 
return 
Result 
< 
TransactionDto (
>( )
.) *
Failure* 1
(1 2
result2 8
.8 9
ErrorMessage9 E
)E F
;F G
}   	
}!! 
}"" Å
ÄC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionByIdQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
QueriesHandlers- <
{		 
public

 
>>>>>>> Stashed changes

class		 %
PropertyListingRepository		 *
:		+ ,&
IPropertyListingRepository		- G
{

<<<<<<< Updated upstream
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
=======
 *
GetTransactionByIdQueryHandler

 /
:

0 1
IRequestHandler

2 A
<

A B#
GetTransactionByIdQuery

B Y
,

Y Z
Result

[ a
<

a b
TransactionDto

b p
>

p q
>

q r
{ 
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
private 
readonly 
IMapper  
mapper! '
;' (
public *
GetTransactionByIdQueryHandler -
(- ."
ITransactionRepository. D

repositoryE O
,O P
IMapperQ X
mapperY _
)_ `
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
TransactionDto! /
>/ 0
>0 1
Handle2 8
(8 9#
GetTransactionByIdQuery9 P
requestQ X
,X Y
CancellationTokenZ k
cancellationTokenl }
)} ~
{ 	
var 
result 
= 
await 

repository )
.) *#
GetTransactionByIdAsync* A
(A B
requestB I
.I J
TransactionIdJ W
)W X
;X Y
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
var 
transactionDto "
=# $
mapper% +
.+ ,
Map, /
</ 0
TransactionDto0 >
>> ?
(? @
result@ F
.F G
DataG K
)K L
;L M
return 
Result 
< 
TransactionDto ,
>, -
.- .
Success. 5
(5 6
transactionDto6 D
)D E
;E F
} 
else 
{ 
return 
Result 
< 
TransactionDto ,
>, -
.- .
Failure. 5
(5 6
$"6 8
$str8 L
{L M
requestM T
.T U
TransactionIdU b
}b c
$strc n
"n o
)o p
;p q
}   
}## 	
}%% 
}&& Ë
ÄC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetAllTransactionsQueryHandler.cs
	namespace		 	
Application		
 
.		 
	Use_Cases		 
.		  
Transactions		  ,
.		, -
QueriesHandlers		- <
{

 
public 

class *
GetAllTransactionsQueryHandler /
:0 1
IRequestHandler2 A
<A B#
GetAllTransactionsQueryB Y
,Y Z
Result[ a
<a b
Listb f
<f g
TransactionDtog u
>u v
>v w
>w x
{ 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
public *
GetAllTransactionsQueryHandler -
(- .
IMapper. 5
mapper6 <
,< ="
ITransactionRepository> T

repositoryU _
)_ `
{ 	
this 
. 
mapper 
= 
mapper 
;  
this 
. 

repository 
= 

repository '
;' (
>>>>>>> Stashed changes
} 	
public 
async 
Task 
<<<<<<< Updated upstream
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
=======
< 
Result  
<  !
List! %
<% &
TransactionDto& 4
>4 5
>5 6
>6 7
Handle8 >
(> ?#
GetAllTransactionsQuery? V
requestW ^
,^ _
CancellationToken` q
cancellationToken	r É
)
É Ñ
{ 	
var 
result 
= 
await 

repository )
.) *#
GetAllTransactionsAsync* A
(A B
)B C
;C D
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
var 
transactionDtos #
=$ %
result& ,
., -
Data- 1
.1 2
Select2 8
(8 9
transaction9 D
=>E G
mapperH N
.N O
MapO R
<R S
TransactionDtoS a
>a b
(b c
transactionc n
)n o
)o p
.p q
ToListq w
(w x
)x y
;y z
return 
Result 
< 
List "
<" #
TransactionDto# 1
>1 2
>2 3
.3 4
Success4 ;
(; <
transactionDtos< K
)K L
;L M
} 
else 
{ 
return   
Result   
<   
List   "
<  " #
TransactionDto  # 1
>  1 2
>  2 3
.  3 4
Failure  4 ;
(  ; <
result  < B
.  B C
ErrorMessage  C O
)  O P
;  P Q
}!! 
}"" 	
}## 
}$$  
sC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Commands\UpdateTransactionCommand.cs
	namespace 	 
RealEstateManagement
 
. 
Application *
.* +
Transactions+ 7
.7 8
Commands8 @
{ 
public 

class $
UpdateTransactionCommand )
:* +
IRequest, 4
<4 5
Result5 ;
<; <
Guid< @
>@ A
>A B
{ 
public		 
Transaction		 
Transaction		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public $
UpdateTransactionCommand '
(' (
Transaction( 3
transaction4 ?
)? @
{ 	
Transaction 
= 
transaction %
;% &
} 	
} 
} í
sC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Commands\DeleteTransactionCommand.cs
	namespace 	 
RealEstateManagement
 
. 
Application *
.* +
Transactions+ 7
.7 8
Commands8 @
{ 
public 

class $
DeleteTransactionCommand )
:* +
IRequest, 4
<4 5
Unit5 9
>9 :
{ 
public 
Guid 
TransactionId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 $
DeleteTransactionCommand

 '
(

' (
Guid

( ,
transactionId

- :
)

: ;
{ 	
TransactionId 
= 
transactionId )
;) *
} 	
} 
} ñ
pC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\Commands\AddTransactionCommand.cs
	namespace 	 
RealEstateManagement
 
. 
Application *
.* +
Transactions+ 7
.7 8
Commands8 @
{ 
public 

class !
AddTransactionCommand &
:' (
IRequest) 1
<1 2
Transaction2 =
>= >
{ 
public 
Transaction 
Transaction &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public

 !
AddTransactionCommand

 $
(

$ %
Transaction

% 0
transaction

1 <
)

< =
{ 	
Transaction 
= 
transaction %
;% &
} 	
} 
} Ø
ÅC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\UpdateTransactionCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Transactions  ,
., -
CommandHandlers- <
{		 
public

 

class

 +
UpdateTransactionCommandHandler

 0
:

1 2
IRequestHandler

3 B
<

B C$
UpdateTransactionCommand

C [
,

[ \
Result

] c
<

c d
Guid

d h
>

h i
>

i j
{ 
private 
readonly "
ITransactionRepository /

repository0 :
;: ;
private 
readonly 
IMapper  
mapper! '
;' (
public +
UpdateTransactionCommandHandler .
(. /"
ITransactionRepository/ E

repositoryF P
,P Q
IMapperR Y
mapperZ `
)` a
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /$
UpdateTransactionCommand/ G
requestH O
,O P
CancellationTokenQ b
cancellationTokenc t
)t u
{ 	
var 
transaction 
= 
mapper $
.$ %
Map% (
<( )
Transaction) 4
>4 5
(5 6
request6 =
.= >
Transaction> I
)I J
;J K
try 
{ 
await 

repository  
.  !"
UpdateTransactionAsync! 7
(7 8
transaction8 C
)C D
;D E
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
transaction, 7
.7 8
TransactionId8 E
)E F
;F G
} 
catch 
( 
	Exception 
ex 
)  
{ 
return   
Result   
<   
Guid   "
>  " #
.  # $
Failure  $ +
(  + ,
ex  , .
.  . /
Message  / 6
)  6 7
;  7 8
}!! 
}"" 	
}## 
}$$ Ó
ÅC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\DeleteTransactionCommandHandler.cs
	namespace 	 
RealEstateManagement
 
. 
Application *
.* +
Transactions+ 7
.7 8
CommandHandlers8 G
{ 
public 

class +
DeleteTransactionCommandHandler 0
:1 2
IRequestHandler3 B
<B C$
DeleteTransactionCommandC [
,[ \
Unit] a
>a b
{ 
private		 
readonly		 "
ITransactionRepository		 /"
_transactionRepository		0 F
;		F G
public +
DeleteTransactionCommandHandler .
(. /"
ITransactionRepository/ E!
transactionRepositoryF [
)[ \
{ 	"
_transactionRepository "
=# $!
transactionRepository% :
;: ;
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '$
DeleteTransactionCommand' ?
request@ G
,G H
CancellationTokenI Z
cancellationToken[ l
)l m
{ 	
await "
_transactionRepository (
.( )"
DeleteTransactionAsync) ?
(? @
request@ G
.G H
TransactionIdH U
)U V
;V W
return 
Unit 
. 
Value 
; 
} 	
} 
} §
~C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\AddTransactionCommandHandler.cs
	namespace 	 
RealEstateManagement
 
. 
Application *
.* +
Transactions+ 7
.7 8
CommandHandlers8 G
{ 
public 

class (
AddTransactionCommandHandler -
:. /
IRequestHandler0 ?
<? @!
AddTransactionCommand@ U
,U V
TransactionW b
>b c
{		 
private

 
readonly

 "
ITransactionRepository

 /"
_transactionRepository

0 F
;

F G
public (
AddTransactionCommandHandler +
(+ ,"
ITransactionRepository, B!
transactionRepositoryC X
)X Y
{ 	"
_transactionRepository "
=# $!
transactionRepository% :
;: ;
} 	
public 
async 
Task 
< 
Transaction %
>% &
Handle' -
(- .!
AddTransactionCommand. C
requestD K
,K L
CancellationTokenM ^
cancellationToken_ p
)p q
{ 	
return 
await "
_transactionRepository /
./ 0
AddTransactionAsync0 C
(C D
requestD K
.K L
TransactionL W
)W X
;X Y
} 	
} 
} ‡
~C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\QueryHandlers\GetListingByIdQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
QueryHandlers  -
{		 
public

 

class

 &
GetListingByIdQueryHandler

 +
:

, -
IRequestHandler

. =
<

= >
GetListingByIdQuery

> Q
,

Q R
PropertyListingDto

S e
>

e f
{ 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly &
IPropertyListingRepository 3

repository4 >
;> ?
public &
GetListingByIdQueryHandler )
() *
IMapper* 1
mapper2 8
,8 9&
IPropertyListingRepository: T

repositoryU _
)_ `
{ 	
this 
. 
mapper 
= 
mapper  
;  !
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
PropertyListingDto ,
>, -
Handle. 4
(4 5
GetListingByIdQuery5 H
requestI P
,P Q
CancellationTokenR c
cancellationTokend u
)u v
{ 	
var 
listing 
= 
await 

repository  *
.* +
GetListingByIdAsync+ >
(> ?
request? F
.F G

PropertyIdG Q
)Q R
;R S
if 
( 
listing 
== 
null 
)  
{ 
throw 
new  
KeyNotFoundException .
(. /
$"/ 1
$str1 J
{J K
requestK R
.R S

PropertyIdS ]
}] ^
$str^ i
"i j
)j k
;k l
} 
return 
mapper 
. 
Map 
< 
PropertyListingDto 0
>0 1
(1 2
listing2 9
)9 :
;: ;
} 	
} 
} ö
ÖC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\QueryHandlers\GetAllPropertyListingQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
QueryHandlers  -
{ 
public		 

class		 -
!GetAllPropertyListingQueryHandler		 2
:		3 4
IRequestHandler		5 D
<		D E&
GetAllPropertyListingQuery		E _
,		_ `
List		a e
<		e f
PropertyListingDto		f x
>		x y
>		y z
>>>>>>> Stashed changes
{

 
private 
<<<<<<< Updated upstream
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
=======
readonly 
IMapper  
_mapper! (
;( )
private 
readonly &
IPropertyListingRepository 3
_repository4 ?
;? @
public -
!GetAllPropertyListingQueryHandler 0
(0 1
IMapper1 8
mapper9 ?
,? @&
IPropertyListingRepositoryA [

repository\ f
)f g
{ 	
_mapper 
= 
mapper 
; 
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
PropertyListingDto 1
>1 2
>2 3
Handle4 :
(: ;&
GetAllPropertyListingQuery; U
requestV ]
,] ^
CancellationToken_ p
cancellationToken	q Ç
)
Ç É
{ 	
var 
listings 
= 
await  
_repository! ,
., -
GetAllListingsAsync- @
(@ A
)A B
;B C
return 
listings 
. 
Select "
(" #
listing# *
=>+ -
_mapper. 5
.5 6
Map6 9
<9 :
PropertyListingDto: L
>L M
(M N
listingN U
)U V
)V W
.W X
ToListX ^
(^ _
)_ `
;` a
} 	
} 
} Í
qC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Queries\GetListingByIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Queries  '
{ 
public 

class 
GetListingByIdQuery $
:% &
IRequest' /
</ 0
PropertyListingDto0 B
>B C
{ 
public 
Guid 

PropertyId 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 å
xC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Queries\GetAllPropertyListingQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Queries  '
{ 
public 

class &
GetAllPropertyListingQuery +
:, -
IRequest. 6
<6 7
List7 ;
<; <
PropertyListingDto< N
>N O
>O P
{ 
}		 
}

 À
ÑC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\UpdatePropertyListingCommandValidator.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Commands  (
{ 
public 

class 1
%UpdatePropertyListingCommandValidator 6
:7 8
AbstractValidator9 J
<J K(
UpdatePropertyListingCommandK g
>g h
{ 
public 1
%UpdatePropertyListingCommandValidator 4
(4 5
)5 6
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 

PropertyId		 %
)		% &
.		& '
NotEmpty		' /
(		/ 0
)		0 1
.		1 2
Must		2 6
(		6 7
BeAValidGuid		7 C
)		C D
;		D E
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Address

 "
)

" #
.

# $
MaximumLength

$ 1
(

1 2
$num

2 5
)

5 6
;

6 7
RuleFor 
( 
x 
=> 
x 
. 
Price  
)  !
.! "
GreaterThan" -
(- .
$num. /
)/ 0
;0 1
RuleFor 
( 
x 
=> 
x 
. 
SquareFootage (
)( )
.) *
GreaterThan* 5
(5 6
$num6 7
)7 8
;8 9
RuleFor 
( 
x 
=> 
x 
. 
NumberOfBedrooms +
)+ ,
., - 
GreaterThanOrEqualTo- A
(A B
$numB C
)C D
;D E
RuleFor 
( 
x 
=> 
x 
. 
NumberOfBathrooms ,
), -
.- . 
GreaterThanOrEqualTo. B
(B C
$numC D
)D E
;E F
RuleFor 
( 
x 
=> 
x 
. 
Description &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
.2 3
MaximumLength3 @
(@ A
$numA D
)D E
;E F
RuleFor 
( 
x 
=> 
x 
. 
Status !
)! "
." #
NotEmpty# +
(+ ,
), -
;- .
RuleFor 
( 
x 
=> 
x 
. 
ListingDate &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
;2 3
RuleFor 
( 
x 
=> 
x 
. 
	ImageURLs $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
;0 1
RuleFor 
( 
x 
=> 
x 
. 
UserID !
)! "
." #
NotEmpty# +
(+ ,
), -
;- .
} 	
private 
static 
bool 
BeAValidGuid (
(( )
Guid) -
guid. 2
)2 3
{ 	
return 
Guid 
. 
TryParse  
(  !
guid! %
.% &
ToString& .
(. /
)/ 0
,0 1
out2 5
_6 7
)7 8
;8 9
} 	
} 
} ≤
{C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\UpdatePropertyListingCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Commands  (
{ 
public 

class (
UpdatePropertyListingCommand -
:. /
IRequest0 8
<8 9
Result9 ?
<? @
Guid@ D
>D E
>E F
{ 
public 
Guid 

PropertyId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
?		 
Address		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
?

 
Type

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
SquareFootage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
NumberOfBedrooms &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
ListingDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
	ImageURLs  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Guid 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ¢
{C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\DeletePropertyListingCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Commands  (
{ 
public 

class (
DeletePropertyListingCommand -
:. /
IRequest0 8
<8 9
Result9 ?
<? @
Guid@ D
>D E
>E F
{ 
public 
Guid 

PropertyId 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 Á
ÑC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\CreatePropertyListingCommandValidator.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Commands  (
{ 
public 

class 1
%CreatePropertyListingCommandValidator 6
:7 8
AbstractValidator9 J
<J K(
CreatePropertyListingCommandK g
>g h
{ 
public 1
%CreatePropertyListingCommandValidator 4
(4 5
)5 6
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
Address		 "
)		" #
.		# $
MaximumLength		$ 1
(		1 2
$num		2 5
)		5 6
;		6 7
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Price

  
)

  !
.

! "
GreaterThan

" -
(

- .
$num

. /
)

/ 0
;

0 1
RuleFor 
( 
x 
=> 
x 
. 
SquareFootage (
)( )
.) *
GreaterThan* 5
(5 6
$num6 7
)7 8
;8 9
RuleFor 
( 
x 
=> 
x 
. 
NumberOfBedrooms +
)+ ,
., - 
GreaterThanOrEqualTo- A
(A B
$numB C
)C D
;D E
RuleFor 
( 
x 
=> 
x 
. 
NumberOfBathrooms ,
), -
.- . 
GreaterThanOrEqualTo. B
(B C
$numC D
)D E
;E F
RuleFor 
( 
x 
=> 
x 
. 
Description &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
.2 3
MaximumLength3 @
(@ A
$numA D
)D E
;E F
RuleFor 
( 
x 
=> 
x 
. 
Status !
)! "
." #
NotEmpty# +
(+ ,
), -
;- .
RuleFor 
( 
x 
=> 
x 
. 
ListingDate &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
;2 3
RuleFor 
( 
x 
=> 
x 
. 
	ImageURLs $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
;0 1
RuleFor 
( 
x 
=> 
x 
. 
UserID !
)! "
." #
NotEmpty# +
(+ ,
), -
;- .
} 	
} 
} ñ
{C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\CreatePropertyListingCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
Commands  (
{ 
public 

class (
CreatePropertyListingCommand -
:. /
IRequest0 8
<8 9
Result9 ?
<? @
Guid@ D
>D E
>E F
{ 
public 
string 
? 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
?		 
Type		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
double

 
Price

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
double 
SquareFootage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
NumberOfBedrooms &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
ListingDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
	ImageURLs  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Guid 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ü
âC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\UpdatePropertyListingCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
CommandHandlers  /
{		 
public

 

class

 /
#UpdatePropertyListingCommandHandler

 4
:

5 6
IRequestHandler

7 F
<

F G(
UpdatePropertyListingCommand

G c
,

c d
Result

e k
<

k l
Guid

l p
>

p q
>

q r
{ 
private 
readonly &
IPropertyListingRepository 3

repository4 >
;> ?
private 
readonly 
IMapper  
mapper! '
;' (
public /
#UpdatePropertyListingCommandHandler 2
(2 3&
IPropertyListingRepository3 M

repositoryN X
,X Y
IMapperZ a
mapperb h
)h i
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /(
UpdatePropertyListingCommand/ K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	
var 
listing 
= 
mapper  
.  !
Map! $
<$ %
PropertyListing% 4
>4 5
(5 6
request6 =
)= >
;> ?
var 
result 
= 
await 

repository )
.) *
UpdateListingAsync* <
(< =
listing= D
)D E
;E F
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
} 
}   ≈
âC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\DeletePropertyListingCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
CommandHandlers  /
{ 
public 

class /
#DeletePropertyListingCommandHandler 4
:5 6
IRequestHandler7 F
<F G(
DeletePropertyListingCommandG c
,c d
Resulte k
<k l
Guidl p
>p q
>q r
{		 
private

 
readonly

 &
IPropertyListingRepository

 3

repository

4 >
;

> ?
public /
#DeletePropertyListingCommandHandler 2
(2 3&
IPropertyListingRepository3 M

repositoryN X
)X Y
{ 	
this 
. 

repository 
= 

repository (
;( )
>>>>>>> Stashed changes
} 	
public 
async 
Task 
<<<<<<< Updated upstream
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
=======
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /(
DeletePropertyListingCommand/ K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	
var 
result 
= 
await 

repository )
.) *
DeleteListingAsync* <
(< =
request= D
.D E

PropertyIdE O
)O P
;P Q
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
} 
} ì
âC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\CreatePropertyListingCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
CommandHandlers  /
{		 
public

 

class

 /
#CreatePropertyListingCommandHandler

 4
:

5 6
IRequestHandler

7 F
<

F G(
CreatePropertyListingCommand

G c
,

c d
Result

e k
<

k l
Guid

l p
>

p q
>

q r
{ 
private 
readonly &
IPropertyListingRepository 3

repository4 >
;> ?
private 
readonly 
IMapper  
mapper! '
;' (
public /
#CreatePropertyListingCommandHandler 2
(2 3&
IPropertyListingRepository3 M

repositoryN X
,X Y
IMapperZ a
mapperb h
)h i
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /(
CreatePropertyListingCommand/ K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	
var 
propertyListing 
=  !
mapper" (
.( )
Map) ,
<, -
PropertyListing- <
>< =
(= >
request> E
)E F
;F G
var 
result 
= 
await 

repository )
.) *
AddListingAsync* 9
(9 :
propertyListing: I
)I J
;J K
if 
( 
result 
. 
	IsSuccess 
)  
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
}   
}!! ˝
|C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetInquiryByIdQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
QueryHandler0 <
{ 
public		 

class		 &
GetInquiryByIdQueryHandler		 +
:		, -
IRequestHandler		. =
<		= >
GetInquiryByIdQuery		> Q
,		Q R
ClientInquiryDto		S c
>		c d
{

 
private 
readonly 
IMapper  
mapper! '
;' (
private 
readonly $
IClientInquiryRepository 1

repository2 <
;< =
public &
GetInquiryByIdQueryHandler )
() *
IMapper* 1
mapper2 8
,8 9$
IClientInquiryRepository: R

repositoryS ]
)] ^
{ 	
this 
. 
mapper 
= 
mapper  
;  !
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
ClientInquiryDto *
>* +
Handle, 2
(2 3
GetInquiryByIdQuery3 F
requestG N
,N O
CancellationTokenP a
cancellationTokenb s
)s t
>>>>>>> Stashed changes
{ 	
var 
inquiry 
= 
<<<<<<< Updated upstream
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
=======
await 

repository  *
.* +
GetInquiryByIdAsync+ >
(> ?
request? F
.F G
	InquiryIdG P
)P Q
;Q R
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
{H I
requestI P
.P Q
	InquiryIdQ Z
}Z [
$str[ f
"f g
)g h
;h i
} 
return 
mapper 
. 
Map 
< 
ClientInquiryDto .
>. /
(/ 0
inquiry0 7
)7 8
;8 9
} 	
} 
} Ò
ÇC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetInquiryByClientIdQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
QueryHandler0 <
{ 
public		 

class		 ,
 GetInquiryByClientIdQueryHandler		 1
:		2 3
IRequestHandler		4 C
<		C D%
GetInquiryByClientIdQuery		D ]
,		] ^
List		_ c
<		c d
ClientInquiryDto		d t
>		t u
>		u v
{

 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly $
IClientInquiryRepository 1
_repository2 =
;= >
public ,
 GetInquiryByClientIdQueryHandler /
(/ 0
IMapper0 7
mapper8 >
,> ?$
IClientInquiryRepository@ X

repositoryY c
)c d
{ 	
_mapper 
= 
mapper 
; 
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
ClientInquiryDto /
>/ 0
>0 1
Handle2 8
(8 9%
GetInquiryByClientIdQuery9 R
requestS Z
,Z [
CancellationToken\ m
cancellationTokenn 
)	 Ä
{ 	
var 
	inquiries 
= 
await !
_repository" -
.- ."
GetInquiriesByClientId. D
(D E
requestE L
.L M
ClientIdM U
)U V
;V W
return 
	inquiries 
. 
Select #
(# $
inquiry$ +
=>, .
_mapper/ 6
.6 7
Map7 :
<: ;
ClientInquiryDto; K
>K L
(L M
inquiryM T
)T U
)U V
.V W
ToListW ]
(] ^
)^ _
;_ `
} 	
} 
} ö
}C:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetAllInquiriesQueryHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
QueryHandler0 <
{ 
public		 

class		 '
GetAllInquiriesQueryHandler		 ,
:		- .
IRequestHandler		/ >
<		> ? 
GetAllInquiriesQuery		? S
,		S T
List		U Y
<		Y Z
ClientInquiryDto		Z j
>		j k
>		k l
{

 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly $
IClientInquiryRepository 1
_repository2 =
;= >
public '
GetAllInquiriesQueryHandler *
(* +
IMapper+ 2
mapper3 9
,9 :$
IClientInquiryRepository; S

repositoryT ^
)^ _
{ 	
_mapper 
= 
mapper 
; 
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
ClientInquiryDto /
>/ 0
>0 1
Handle2 8
(8 9 
GetAllInquiriesQuery9 M
requestN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	
var 
	inquiries 
= 
await !
_repository" -
.- . 
GetAllInquiriesAsync. B
(B C
)C D
;D E
return 
	inquiries 
. 
Select #
(# $
inquiry$ +
=>, .
_mapper/ 6
.6 7
Map7 :
<: ;
ClientInquiryDto; K
>K L
(L M
inquiryM T
)T U
)U V
.V W
ToListW ]
(] ^
)^ _
;_ `
} 	
} 
} í
pC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetInquiryByIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Queries0 7
{ 
public 

class 
GetInquiryByIdQuery $
:% &
IRequest' /
</ 0
ClientInquiryDto0 @
>@ A
{ 
public 
Guid 
	InquiryId 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
} Õ
vC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetInquiryByClientIdQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Queries0 7
{ 
public 

class %
GetInquiryByClientIdQuery *
:+ ,
IRequest- 5
<5 6
List6 :
<: ;
ClientInquiryDto; K
>K L
>L M
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
}

 È
xC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\UpdateClientInquiryCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Commands0 8
{ 
public 

class &
UpdateClientInquiryCommand +
:, -
IRequest. 6
<6 7
Result7 =
<= >
Guid> B
>B C
>C D
{ 
public 
Guid 
	InquiryId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
List		 
<		 
string		 
>		 
?		 
Types		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
double

 
MinPrice

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
double 
MaxPrice 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
MinSquareFootage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
MaxSquareFootage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBedrooms &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ™
ÜC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\CreateClientInquiryCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
CommandHandlers0 ?
{		 
public

 

class

 -
!CreateClientInquiryCommandHandler

 2
:

3 4
IRequestHandler

5 D
<

D E&
CreateClientInquiryCommand

E _
,

_ `
Result

a g
<

g h
Guid

h l
>

l m
>

m n
{ 
private 
readonly $
IClientInquiryRepository 1

repository2 <
;< =
private 
readonly 
IMapper  
mapper! '
;' (
public -
!CreateClientInquiryCommandHandler 0
(0 1$
IClientInquiryRepository1 I

repositoryJ T
,T U
IMapperV ]
mapper^ d
)d e
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /&
CreateClientInquiryCommand/ I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
)v w
{ 	
var 
clientInquiry 
= 
mapper  &
.& '
Map' *
<* +
ClientInquiry+ 8
>8 9
(9 :
request: A
)A B
;B C
var 
result 
= 
await 

repository )
.) *
AddInquiryAsync* 9
(9 :
clientInquiry: G
)G H
;H I
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
}   
}!! °
GC:\Users\cezar\Desktop\RealEstateManagement\Application\DTOs\UserDto.cs
	namespace 	
Application
 
. 
DTOs 
{ 
public 

class 
UserDto 
{ 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
PhoneNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 ©
qC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetAllInquiriesQuery.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Queries0 7
{ 
public 

class  
GetAllInquiriesQuery %
:& '
IRequest( 0
<0 1
List1 5
<5 6
ClientInquiryDto6 F
>F G
>G H
{ 
}		 
}

 Ë
xC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\CreateClientInquiryCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Commands0 8
{ 
public 

class &
CreateClientInquiryCommand +
:, -
IRequest. 6
<6 7
Result7 =
<= >
Guid> B
>B C
>C D
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
List		 
<		 
string		 
>		 
?		 
Types		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
double

 
MinPrice

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
double 
MaxPrice 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
MinSquareFootage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
MaxSquareFootage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBedrooms &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Œ
RC:\Users\cezar\Desktop\RealEstateManagement\Application\DTOs\PropertyListingDto.cs
	namespace 	
Application
 
. 
DTOs 
{ 
public 

class 
PropertyListingDto #
{ 
public 
Guid 

PropertyId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
Type 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
public		 
double		 
SquareFootage		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
double

 
NumberOfBedrooms

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
ListingDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
	ImageURLs  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Guid 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
} 
} »
xC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\DeleteClientInquiryCommand.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
Commands0 8
{ 
public 

class &
DeleteClientInquiryCommand +
:, -
IRequest. 6
<6 7
Result7 =
<= >
Guid> B
>B C
>C D
{ 
public 
Guid 
	InquiryId 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ≠
ÜC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\UpdateClientInquiryCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
CommandHandlers0 ?
{		 
public

 

class

 -
!UpdateClientInquiryCommandHandler

 2
:

3 4
IRequestHandler

5 D
<

D E&
UpdateClientInquiryCommand

E _
,

_ `
Result

a g
<

g h
Guid

h l
>

l m
>

m n
{ 
private 
readonly $
IClientInquiryRepository 1

repository2 <
;< =
private 
readonly 
IMapper  
mapper! '
;' (
public -
!UpdateClientInquiryCommandHandler 0
(0 1$
IClientInquiryRepository1 I

repositoryJ T
,T U
IMapperV ]
mapper^ d
)d e
{ 	
this 
. 

repository 
= 

repository (
;( )
this 
. 
mapper 
= 
mapper  
;  !
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /&
UpdateClientInquiryCommand/ I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
)v w
{ 	
var 
clientInquiry 
= 
mapper  &
.& '
Map' *
<* +
ClientInquiry+ 8
>8 9
(9 :
request: A
)A B
;B C
var 
result 
= 
await 

repository )
.) *
UpdateInquiryAsync* <
(< =
clientInquiry= J
)J K
;K L
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
} 
} ·
ÜC:\Users\cezar\Desktop\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\DeleteClientInquiryCommandHandler.cs
	namespace 	
Application
 
. 
	Use_Cases 
.  
ClientInquiries  /
./ 0
CommandHandlers0 ?
{ 
public 

class -
!DeleteClientInquiryCommandHandler 2
:3 4
IRequestHandler5 D
<D E&
DeleteClientInquiryCommandE _
,_ `
Resulta g
<g h
Guidh l
>l m
>m n
{		 
private

 
readonly

 $
IClientInquiryRepository

 1

repository

2 <
;

< =
public -
!DeleteClientInquiryCommandHandler 0
(0 1$
IClientInquiryRepository1 I

repositoryJ T
)T U
{ 	
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
Result  
<  !
Guid! %
>% &
>& '
Handle( .
(. /&
DeleteClientInquiryCommand/ I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
)v w
{ 	
var 
result 
= 
await 

repository )
.) *
DeleteInquiryAsync* <
(< =
request= D
.D E
	InquiryIdE N
)N O
;O P
if 
( 
result 
. 
	IsSuccess  
)  !
{ 
return 
Result 
< 
Guid "
>" #
.# $
Success$ +
(+ ,
result, 2
.2 3
Data3 7
)7 8
;8 9
} 
return 
Result 
< 
Guid 
> 
.  
Failure  '
(' (
result( .
.. /
ErrorMessage/ ;
); <
;< =
} 	
} 
} Œ	
NC:\Users\cezar\Desktop\RealEstateManagement\Application\DTOs\TransactionDto.cs
	namespace 	
Application
 
. 
DTOs 
{ 
public 

class 
TransactionDto 
{ 
public 
Guid 
TransactionId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 

PropertyId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
BuyerId 
{ 
get !
;! "
set# &
;& '
}( )
public 
Guid 
SellerId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
double		 
	SalePrice		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
?

 
Status

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} Ù
PC:\Users\cezar\Desktop\RealEstateManagement\Application\DTOs\ClientInquiryDto.cs
	namespace 	
Application
 
. 
DTOs 
{ 
public 

class 
ClientInquiryDto !
{ 
public 
Guid 
	InquiryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
List 
< 
string 
> 
? 
Types "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
double 
MinPrice 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
double		 
MaxPrice		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
double

 
MinSquareFootage

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
double 
MaxSquareFootage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBedrooms &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
double 
NumberOfBathrooms '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ú
NC:\Users\cezar\Desktop\RealEstateManagement\Application\DependencyInjection.cs
	namespace 	
Application
 
{ 
public		 

static		 
class		 
DependencyInjection		 +
{

 
public 
static 
IServiceCollection (
AddApplication) 7
(7 8
this8 <
IServiceCollection= O
servicesP X
)X Y
{ 	
services 
. 

AddMediatR 
(  
cfg  #
=># %
cfg% (
.( )(
RegisterServicesFromAssembly) E
(E F
AssemblyF N
.N O 
GetExecutingAssemblyO c
(c d
)d e
)e f
)f g
;g h
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
MappingProfile* 8
)8 9
)9 :
;: ;
services 
. %
AddValidatorsFromAssembly .
(. /
Assembly/ 7
.7 8 
GetExecutingAssembly8 L
(L M
)M N
)N O
;O P
services 
. 
AddTransient !
(! "
typeof" (
(( )
IPipelineBehavior) :
<: ;
,; <
>< =
)= >
,> ?
typeof@ F
(F G
ValidationBehaviorG Y
<Y Z
,Z [
>[ \
)\ ]
)] ^
;^ _
return 
services 
; 
} 	
} 
} 
>>>>>>> Stashed changes
