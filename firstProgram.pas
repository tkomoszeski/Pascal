{$mode objfpc}
{$m+}

program first;
uses crt;

type
Book = Class
private
 title : String;
 number : integer;
 price: real;
public
        constructor create(t: String ; n: integer; p: real);

        procedure setTitle(t: String);
        function getTitle() : String;

        procedure setNumber(n: integer);
        function getNumber(): integer;

        procedure setPrice(p: real);
        function getPrice(): real;

        procedure display();

end;
constructor Book.create(t: String;n: integer; p: real);
begin
        title := t;
        number := n;
        price := p;
end;

procedure Book.setTitle(t: String);
begin
        title:=t;
end;

function Book.getTitle() : String;
begin
 getTitle := title;
end;

procedure Book.setNumber(n: integer);
begin
number := n;
end;

function Book.getNumber() : integer;
begin;
getNumber := number;
end;

procedure Book.setPrice(p: real);
begin
price := p;
end;

function Book.getPrice() : real;
begin
getPrice := price;
end;

procedure Book.display();
begin
writeln('Ttitle: ', title);
writeln('Number: ',number);
writeln('Price: ', price:5:2);
end;

procedure testBookClass();
var mybook : Book;
begin
myBook := Book.create('W pustyni i w puszczy' , 1, 4.43);
myBook.display();
end;

function getInteger() : integer;
begin
result := 10;
getInteger := result;
end;

procedure writeInteger(number : integer);
begin
writeln('wrting integer: ',number);
end;

procedure forLoop();
var i: integer;
begin
for i:= 0 to 10 do
        writeln('Hello World!');
end;

procedure whileLoop();
var i: integer;
begin
while i >0 do
        begin
                writeln('Iteration value:',i);

                i:= i - 1;
        end;
end;

(*Mian program *)
begin
forLoop();
whileLoop();
writeInteger(getInteger());
testBookClass();
readkey();
end.
