
void main()
{
Set wordSet = Set();

  wordSet.add("apple");
  wordSet.add("banana");
  wordSet.add("orange");
  wordSet.add("apple");  
  wordSet.add("grape");
  wordSet.add("banana");



print(wordSet);

for(var data in wordSet)
{
print(data);
}
}