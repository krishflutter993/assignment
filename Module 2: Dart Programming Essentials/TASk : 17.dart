class Book
{
  String? title;
  String? author;
  int? publicationYear;

  // Constructor with optional parameters
  Book({this.title = "", this.author = "", this.publicationYear = 0});

  // Method to display book details
  void displayDetails()
  {
    print("Title: $title");
    print("Author: $author");
    print("Publication Year: $publicationYear");
  }

  // Method to check if the book is over 10 years old
  bool isOverTenYearsOld()
  {
    final currentYear = DateTime.now().year;
    return (currentYear - publicationYear!) > 10;
  }
}

void main()
{
    Book book = Book
    (
       title: "1984",
       author: "George Orwell",
       publicationYear: 1949,
    );

  book.displayDetails();
  print("Over 10 years old: ${book.isOverTenYearsOld()}"); // true
}