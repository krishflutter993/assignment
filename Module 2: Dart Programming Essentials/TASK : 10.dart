import 'dart:io';
Reverse(var key , [var reversed])
{

  String reversed = key.split('').reversed.join('');
    if (key == reversed)
    {
       print( "The string is a palindrome.");
    }
    else
    {
        print("The string is not a palindrome.");
    }
}
void main()
{

print("enter any string");
var key = stdin.readLineSync().toString();
Reverse(key);

}