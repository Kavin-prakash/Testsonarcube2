�
`C:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Add.cs
partial 
class 

: 
CRUD "
{ 
public 
override 
void 
AddData $
($ %
MySqlConnection% 4
conn5 9
)9 :
{		 
Console

 
.

 
	WriteLine

 
(

 
$str

 9
)

9 :
;

: ;
int 
id 
= 
Convert 
. 
ToInt32  
(  !
Console! (
.( )
ReadLine) 1
(1 2
)2 3
)3 4
;4 5
Console
.
	WriteLine
(
$str
)
;
string 
? 
name 
= 
Console 
. 
ReadLine '
(' (
)( )
;) *
Console 
. 
	WriteLine 
( 
$str ?
)? @
;@ A
int 
quantity 
= 
Convert 
. 
ToInt32 &
(& '
Console' .
.. /
ReadLine/ 7
(7 8
)8 9
)9 :
;: ;
Console 
. 
	WriteLine 
( 
$str <
)< =
;= >
int 
price 
= 
Convert 
. 
ToInt32 #
(# $
Console$ +
.+ ,
ReadLine, 4
(4 5
)5 6
)6 7
;7 8
try 
{ 	
conn 
. 
Open 
( 
) 
; 
string 
insertquery 
=  
$"! #
$str# v
{v w
idw y
}y z
$strz }
{} ~
name	~ �
}
� �
$str
� �
{
� �
quantity
� �
}
� �
$str
� �
{
� �
price
� �
}
� �
$str
� �
"
� �
;
� �
MySqlCommand 
cmd 
= 
new "
MySqlCommand# /
(/ 0
insertquery0 ;
,; <
conn= A
)A B
;B C
cmd 
. 
ExecuteNonQuery 
(  
)  !
;! "
conn 
. 
Close 
( 
) 
; 
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
Console   
.   
	WriteLine   
(   
ex    
.    !
Message  ! (
)  ( )
;  ) *
}!! 	
Console## 
.## 
	WriteLine## 
(## 
$str## =
)##= >
;##> ?
}$$ 
}%% �
aC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\CRUD.cs
	namespace 	

Management
 
{ 
abstract 
class
CRUD 
{ 
public 
abstract 
void 
AddData $
($ %
MySqlConnection% 4
conn5 9
)9 :
;: ;
public

 
abstract

 
void

 
ReadData

 %
(

% &
MySqlConnection

& 5
conn

6 :
)

: ;
;

; <
public 
abstract 
void 

UpdateData '
(' (
MySqlConnection( 7
conn8 <
)< =
;= >
public 
abstract 
void 

DeleteData '
(' (
MySqlConnection( 7
conn8 <
)< =
;= >
} 
} �
cC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Delete.cs
partial 
class 

{ 
public 

override 
void 

DeleteData #
(# $
MySqlConnection$ 3
conn4 8
)8 9
{		 
Console

 
.

 
Write

 
(

 
$str

 1
)

1 2
;

2 3
int 
id 
= 
Convert 
. 
ToInt32  
(  !
Console! (
.( )
ReadLine) 1
(1 2
)2 3
)3 4
;4 5
try 
{
conn 
. 
Open 
( 
) 
; 
string 
insertQuery 
=  
$"! #
$str# I
{I J
idJ L
}L M
$strM N
"N O
;O P
MySqlCommand 
cmd 
= 
new "
MySqlCommand# /
(/ 0
insertQuery0 ;
,; <
conn= A
)A B
;B C
cmd 
. 
ExecuteNonQuery 
(  
)  !
;! "
conn 
. 
Close 
( 
) 
; 
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
Console 
. 
	WriteLine 
( 
ex  
.  !
Message! (
)( )
;) *
} 	
Console 
. 
	WriteLine 
( 
$str 7
)7 8
;8 9
} 
} �
dC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Program.cs
	namespace 	#
ProductManagementSystem
 !
{ 
class 	
Program
 
{ 
static		 
void		 
Main		 
(		 
string		 
[		  
]		  !
args		" &
)		& '
{

 	
string 
Str 
= 
$str ^
;^ _
MySqlConnection
conn
=
new
MySqlConnection
(
Str
)
;


=( )
new* -

(; <
)< =
;= >
while 
( 
true 
) 
{ 
Console 
. 
	WriteLine !
(! "
$str" =
)= >
;> ?
Console 
. 
	WriteLine !
(! "
$str" 5
)5 6
;6 7
Console 
. 
	WriteLine !
(! "
$str" 1
)1 2
;2 3
Console 
. 
	WriteLine !
(! "
$str" 2
)2 3
;3 4
Console 
. 
	WriteLine !
(! "
$str" 4
)4 5
;5 6
Console 
. 
	WriteLine !
(! "
$str" 4
)4 5
;5 6
Console 
. 
	WriteLine !
(! "
$str" *
)* +
;+ ,
Console 
. 
	WriteLine !
(! "
$str" 7
)7 8
;8 9
string 
? 
choice 
=  
Console! (
.( )
ReadLine) 1
(1 2
)2 3
;3 4
switch 
( 
choice 
) 
{   
case!! 
$str!! 
:!! 

.##% &
AddData##& -
(##- .
conn##. 2
)##2 3
;##3 4
break%% 
;%% 
case'' 
$str'' 
:'' 

.))% &
ReadData))& .
()). /
conn))/ 3
)))3 4
;))4 5
break++ 
;++ 
case-- 
$str-- 
:-- 

.//% &

UpdateData//& 0
(//0 1
conn//1 5
)//5 6
;//6 7
break11 
;11 
case44 
$str44 
:44 

.66% &

DeleteData66& 0
(660 1
conn661 5
)665 6
;666 7
break88 
;88 
case:: 
$str:: 
::: 
Environment<< #
.<<# $
Exit<<$ (
(<<( )
$num<<) *
)<<* +
;<<+ ,
break== 
;== 
default?? 
:?? 
ConsoleAA 
.AA  
	WriteLineAA  )
(AA) *
$strAA* P
)AAP Q
;AAQ R
breakCC 
;CC 
}DD 
}FF 
}HH 	
}II 
}JJ �
aC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Read.cs
partial 
class 

{ 
public 

override 
void 
ReadData !
(! "
MySqlConnection" 1
conn2 6
)6 7
{		 
try

 
{ 	
conn 
. 
Open 
( 
) 
; 
string
sql
=
$str
;
MySqlCommand 
cmd 
= 
new "
MySqlCommand# /
(/ 0
sql0 3
,3 4
conn5 9
)9 :
;: ;
MySqlDataReader 
rdr 
=  !
cmd" %
.% &

(3 4
)4 5
;5 6
while 
( 
rdr 
. 
Read 
( 
) 
) 
{ 
Console 
. 
	WriteLine !
(! "
rdr" %
[% &
$num& '
]' (
+) *
$str+ /
+0 1
rdr2 5
[5 6
$num6 7
]7 8
+9 :
$str; ?
+@ A
rdrB E
[E F
$numF G
]G H
+I J
$strK O
+P Q
rdrR U
[U V
$numV W
]W X
)X Y
;Y Z
} 
rdr 
. 
Close 
( 
) 
; 
conn 
. 
Close 
( 
) 
; 
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
Console 
. 
	WriteLine 
( 
ex  
.  !
Message! (
)( )
;) *
} 	
Console   
.   
	WriteLine   
(   
$str   6
)  6 7
;  7 8
}!! 
}"" �#
cC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Update.cs
partial 
class 

{ 
public 

override 
void 

UpdateData #
(# $
MySqlConnection$ 3
conn4 8
)8 9
{		 
Console

 
.

 
	WriteLine

 
(

 
$str

 >
)

> ?
;

? @
Console 
. 
	WriteLine 
( 
$str 3
)3 4
;4 5
Console 
. 
	WriteLine 
( 
$str +
)+ ,
;, -
Console
.
	WriteLine
(
$str
)
;
Console 
. 
	WriteLine 
( 
$str 1
)1 2
;2 3
Console 
. 
	WriteLine 
( 
$str .
). /
;/ 0
string 
? 
updatechoice 
= 
Console &
.& '
ReadLine' /
(/ 0
)0 1
;1 2
string 
? 

updatedata 
= 
null !
;! "
switch 
( 
updatechoice 
) 
{ 	
case 
$str 
: 

updatedata 
= 
$str )
;) *
Console 
. 
Write 
( 
$str >
)> ?
;? @
break 
; 
case 
$str 
: 

updatedata 
= 
$str +
;+ ,
Console 
. 
Write 
( 
$str A
)A B
;B C
break 
; 
case 
$str 
: 

updatedata 
= 
$str /
;/ 0
Console 
. 
	WriteLine !
(! "
$str" H
)H I
;I J
break   
;   
case"" 
$str"" 
:"" 

updatedata## 
=## 
$str## ,
;##, -
Console$$ 
.$$ 
	WriteLine$$ !
($$! "
$str$$" H
)$$H I
;$$I J
break%% 
;%% 
}&& 	
string(( 
?(( 
updatevalue(( 
=(( 
Console(( %
.((% &
ReadLine((& .
(((. /
)((/ 0
;((0 1
Console)) 
.)) 
Write)) 
()) 
$str)) )
)))) *
;))* +
int** 
id** 
=** 
Convert** 
.** 
ToInt32**  
(**  !
Console**! (
.**( )
ReadLine**) 1
(**1 2
)**2 3
)**3 4
;**4 5
try++ 
{,, 	
conn-- 
.-- 
Open-- 
(-- 
)-- 
;-- 
string.. 
insertQuery.. 
=..  
$"..! #
$str..# 6
{..6 7

updatedata..7 A
}..A B
$str..B D
{..D E
updatevalue..E P
}..P Q
$str..Q e
{..e f
id..f h
}..h i
$str..i j
"..j k
;..k l
MySqlCommand// 
cmd// 
=// 
new// "
MySqlCommand//# /
(/// 0
insertQuery//0 ;
,//; <
conn//= A
)//A B
;//B C
MySqlDataReader00 
rdr00 
=00  !
cmd00" %
.00% &

(003 4
)004 5
;005 6
conn11 
.11 
Close11 
(11 
)11 
;11 
}33 	
catch44 
(44 
	Exception44 
ex44 
)44 
{55 	
Console66 
.66 
	WriteLine66 
(66 
ex66  
.66  !
Message66! (
)66( )
;66) *
}77 	
Console88 
.88 
	WriteLine88 
(88 
$str88 7
)887 8
;888 9
}99 
}:: 