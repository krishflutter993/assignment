void main()
{
  Map<String,String>add=
  {
    'Alice' : '123-4567',
    'Bob' : '987-6543'
  };
print(add);
  add.update("Alice",(value) => "111-3333");
  add.remove("Bob");

  print('Address Book:');
  for(var data in add.entries)
  {
      print(data);

  }
}