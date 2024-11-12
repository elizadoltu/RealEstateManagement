Å
dC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\ValidationBehavior.cs
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
} ˙
cC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\utils\PagedResult.cs
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
} Ÿ
fC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\utils\MappingProfile.cs
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
} Œ
èC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionsBySellerIdQuery.cs
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
} À
éC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionsByBuyerIdQuery.cs
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
} õ
êC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionByPropertyIdQuery.cs
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
} ‡
àC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetTransactionByIdQuery.cs
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
} Ò
àC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Queries\GetAllTransactionsQuery.cs
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
 ê
ûC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionsBySellerIdQueryHandler.cs
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
}"" à
ùC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionsByBuyerIdQueryHandler.cs
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
}"" º
üC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionByPropertyIdQueryHandler.cs
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
}"" ò
óC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetTransactionByIdQueryHandler.cs
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

class

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
}&& ˇ
óC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\QueriesHandlers\GetAllTransactionsQueryHandler.cs
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
} 	
public 
async 
Task 
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
}$$ ‚
äC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Commands\UpdateTransactionCommand.cs
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
} ™
äC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Commands\DeleteTransactionCommand.cs
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
} Æ
áC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\Commands\AddTransactionCommand.cs
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
} ∆
òC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\UpdateTransactionCommandHandler.cs
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
}$$ Ö
òC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\DeleteTransactionCommandHandler.cs
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
} º
ïC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\Transactions\CommandHandlers\AddTransactionCommandHandler.cs
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
} ¯
ïC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\QueryHandlers\GetListingByIdQueryHandler.cs
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
} ±
úC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\QueryHandlers\GetAllPropertyListingQueryHandler.cs
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
{

 
private 
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
} Ç
àC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Queries\GetListingByIdQuery.cs
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
 §
èC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Queries\GetAllPropertyListingQuery.cs
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
 ‚
õC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\UpdatePropertyListingCommandValidator.cs
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
} 	
static 
private 
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
}  
íC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\UpdatePropertyListingCommand.cs
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
} ∫
íC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\DeletePropertyListingCommand.cs
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
 ˛
õC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\CreatePropertyListingCommandValidator.cs
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
} Æ
íC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\Commands\CreatePropertyListingCommand.cs
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
} ù
†C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\UpdatePropertyListingCommandHandler.cs
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
}   ‹
†C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\DeletePropertyListingCommandHandler.cs
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
} 	
public 
async 
Task 
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
} ™
†C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\PropertyListings\CommandHandlers\CreatePropertyListingCommandHandler.cs
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
}!! ï
ìC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetInquiryByIdQueryHandler.cs
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
{ 	
var 
inquiry 
= 
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
} à
ôC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetInquiryByClientIdQueryHandler.cs
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
} ≤
îC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\QueryHandler\GetAllInquiriesQueryHandler.cs
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
} ™
áC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetInquiryByIdQuery.cs
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
} Â
çC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetInquiryByClientIdQuery.cs
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
 ¡
àC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Queries\GetAllInquiriesQuery.cs
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
 Å
èC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\UpdateClientInquiryCommand.cs
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
} Ä
èC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\CreateClientInquiryCommand.cs
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
} ‡
èC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\Commands\DeleteClientInquiryCommand.cs
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
 ƒ
ùC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\UpdateClientInquiryCommandHandler.cs
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
} ¯
ùC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\DeleteClientInquiryCommandHandler.cs
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
} ¡
ùC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\Use Cases\ClientInquiries\CommandHandlers\CreateClientInquiryCommandHandler.cs
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
}!! ∏
^C:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\DTOs\UserDto.cs
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
 Â	
eC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\DTOs\TransactionDto.cs
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
} ã
gC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\DTOs\ClientInquiryDto.cs
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
} Â
iC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\DTOs\PropertyListingDto.cs
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
} ≥
eC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Application\DependencyInjection.cs
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