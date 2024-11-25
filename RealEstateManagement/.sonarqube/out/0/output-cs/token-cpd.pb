Ó

iC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Repositories\IUserRepository.cs
	namespace 	
Domain
 
. 
Repositories 
{ 
public 

	interface 
IUserRepository $
{ 
Task 
< 
IEnumerable 
< 
User 
> 
> 
GetAllUsersAsync  0
(0 1
)1 2
;2 3
Task 
< 
User 
> 
GetUserByIdAsync #
(# $
Guid$ (
id) +
)+ ,
;, -
Task		 
<		 
IEnumerable		 
<		 
PropertyListing		 (
>		( )
>		) *
GetListingsByUserId		+ >
(		> ?
Guid		? C
userId		D J
)		J K
;		K L
Task

 
<

 
User

 
>

 
AddUserAsync

 
(

  
User

  $
user

% )
)

) *
;

* +
Task 
UpdateUserAsync 
( 
User !
user" &
)& '
;' (
Task 
DeleteUserAsync 
( 
Guid !
id" $
)$ %
;% &
} 
} ‹
pC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Repositories\ITransactionRepository.cs
	namespace 	
Domain
 
. 
Repositories 
{ 
public 

	interface "
ITransactionRepository +
{ 
Task 
< 
Result 
< 
IEnumerable 
<  
Transaction  +
>+ ,
>, -
>- .#
GetAllTransactionsAsync/ F
(F G
)G H
;H I
Task		 
<		 
Result		 
<		 
Transaction		 
>		  
>		  !#
GetTransactionByIdAsync		" 9
(		9 :
Guid		: >
id		? A
)		A B
;		B C
Task

 
<

 
Result

 
<

 
Transaction

 
>

  
>

  !+
GetTransactionByPropertyIdAsync

" A
(

A B
Guid

B F
id

G I
)

I J
;

J K
Task 
< 
IEnumerable 
< 
Transaction $
>$ %
>% &$
GetTransactionsByBuyerId' ?
(? @
Guid@ D
userIdE K
)K L
;L M
Task 
< 
IEnumerable 
< 
Transaction $
>$ %
>% &%
GetTransactionsBySellerId' @
(@ A
GuidA E
userIdF L
)L M
;M N
Task 
< 
Transaction 
> 
AddTransactionAsync -
(- .
Transaction. 9
transaction: E
)E F
;F G
Task "
UpdateTransactionAsync #
(# $
Transaction$ /
transaction0 ;
); <
;< =
Task "
DeleteTransactionAsync #
(# $
Guid$ (
id) +
)+ ,
;, -
} 
} ¨
tC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Repositories\IPropertyListingRepository.cs
	namespace 	
Domain
 
. 
Repositories 
{ 
public 

	interface &
IPropertyListingRepository /
{ 
Task 
< 
IEnumerable 
< 
PropertyListing (
>( )
>) *
GetAllListingsAsync+ >
(> ?
)? @
;@ A
Task		 
<		 
PropertyListing		 
>		 
GetListingByIdAsync		 1
(		1 2
Guid		2 6
id		7 9
)		9 :
;		: ;
Task 
< 
Result 
< 
Guid 
> 
> 
AddListingAsync *
(* +
PropertyListing+ :
listing; B
)B C
;C D
Task 
< 
Result 
< 
Guid 
> 
> 
UpdateListingAsync -
(- .
PropertyListing. =
listing> E
)E F
;F G
Task 
< 
Result 
< 
Guid 
> 
> 
DeleteListingAsync -
(- .
Guid. 2
id3 5
)5 6
;6 7
} 
} ˜
rC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Repositories\IClientInquiryRepository.cs
	namespace 	
Domain
 
. 
Repositories 
{ 
public 

	interface $
IClientInquiryRepository -
{ 
Task 
< 
IEnumerable 
< 
ClientInquiry &
>& '
>' ( 
GetAllInquiriesAsync) =
(= >
)> ?
;? @
Task		 
<		 
ClientInquiry		 
>		 
GetInquiryByIdAsync		 /
(		/ 0
Guid		0 4
id		5 7
)		7 8
;		8 9
Task

 
<

 
IEnumerable

 
<

 
ClientInquiry

 &
>

& '
>

' ("
GetInquiriesByClientId

) ?
(

? @
Guid

@ D
clientId

E M
)

M N
;

N O
Task 
< 
Result 
< 
Guid 
> 
> 
AddInquiryAsync *
(* +
ClientInquiry+ 8
inquiry9 @
)@ A
;A B
Task 
< 
Result 
< 
Guid 
> 
> 
UpdateInquiryAsync -
(- .
ClientInquiry. ;
inquiry< C
)C D
;D E
Task 
< 
Result 
< 
Guid 
> 
> 
DeleteInquiryAsync -
(- .
Guid. 2
id3 5
)5 6
;6 7
} 
} …
ZC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Entities\User.cs
	namespace 	
Domain
 
. 
Entities 
{ 
public 

class 
User 
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
}/ 0
public		 
List		 
<		 
PropertyListing		 #
>		# $
?		$ %
propertyListings		& 6
{		7 8
get		9 <
;		< =
set		> A
;		A B
}		C D
public

 
List

 
<

 
ClientInquiry

 !
>

! "
?

" #
clientInquiries

$ 3
{

4 5
get

6 9
;

9 :
set

; >
;

> ?
}

@ A
} 
} Ý	
aC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Entities\Transaction.cs
	namespace 	
Domain
 
. 
Entities 
{ 
public 

class 
Transaction 
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
} Ý
eC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Entities\PropertyListing.cs
	namespace 	
Domain
 
. 
Entities 
{ 
public 

class 
PropertyListing  
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
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
ListingDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
	ImageURLs  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Guid 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ƒ
cC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Entities\ClientInquiry.cs
	namespace 	
Domain
 
. 
Entities 
{ 
public 

class 
ClientInquiry 
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
} ë
ZC:\Users\marin\OneDrive\Desktop\Projects\.NET\RealEstateManagement\Domain\Common\Result.cs
	namespace 	
Domain
 
. 
Common 
{ 
public 

class 
Result 
< 
T 
> 
{ 
public 
T 
Data 
{ 
get 
; 
} 
public 
bool 
	IsSuccess 
{ 
get  #
;# $
}% &
public 
string 
ErrorMessage "
{# $
get% (
;( )
}* +
	protected		 
Result		 
(		 
T		 
data		 
,		  
bool		! %
	isSuccess		& /
,		/ 0
string		1 7
errorMessage		8 D
)		D E
{

 	
Data 
= 
data 
; 
	IsSuccess 
= 
	isSuccess !
;! "
ErrorMessage 
= 
errorMessage '
;' (
} 	
public 
static 
Result 
< 
T 
> 
Success  '
(' (
T( )
data* .
). /
=>0 2
new3 6
(6 7
data7 ;
,; <
true= A
,A B
nullC G
!G H
)H I
;I J
public 
static 
Result 
< 
T 
> 
Failure  '
(' (
string( .
errorMessage/ ;
); <
{ 	
return 
new 
Result 
< 
T 
>  
(  !
default! (
!( )
,) *
false+ 0
,0 1
errorMessage2 >
)> ?
;? @
} 	
} 
} 