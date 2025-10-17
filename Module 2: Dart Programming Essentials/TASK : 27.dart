import 'dart:io';

Future fetchUser(int id, List<String> krish)
{
  return Future.delayed(Duration(seconds: 3)).then((_)
  {
    krish.add("User $id");
    print("User $id loaded");
  });
}

void main() async
{
  List<String> krish = [];

  print("Fetching users...");

  await fetchUser(1, krish);
  await fetchUser(2, krish);
  await fetchUser(3, krish);
  await fetchUser(4, krish);
  await fetchUser(5, krish);

  print("All users loaded:");
  print(krish);
}