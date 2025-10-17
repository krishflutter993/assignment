Map<String, int> countCharFrequency(String input)
{
  Map<String, int> frequencyMap = {};

  for (int i = 0; i < input.length; i++)
  {
    String char = input[i];
    if (frequencyMap.containsKey(char))
    {
      frequencyMap[char] = frequencyMap[char]! + 1;
    }
    else
    {
      frequencyMap[char] = 1;
    }
  }

  return frequencyMap;
}

void main()
{
  String text = "example string";
  Map<String, int> result = countCharFrequency(text);

  print(result);
}
