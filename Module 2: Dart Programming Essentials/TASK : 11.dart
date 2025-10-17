import 'dart:io';
fibonacci(int n)
{
  var fas = 0 , sec = 1;

for(int i=0;i<n;i++)
  {
    print("fibonacci number : $fas");
    var tha = fas + sec;
    fas=sec;
    sec=tha;
  }
}
void main()
{

  print("Enter your fibonacci number.");
  var n = int.parse(stdin.readLineSync().toString());

  fibonacci(n);

}