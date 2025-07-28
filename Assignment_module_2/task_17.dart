// Create a class called Book with properties like title, author, and publication year. Add methods to display the book’s details
// and a method to check if it’s over 10 years old.

class Book {
  var title;
  var author;
  var publication_year;
  Book(String title, String author, int publication_year) {
    this.title = title;
    this.author = author;
    this.publication_year = publication_year;
  }

  display() {
    print("Title: $title");
    print("Author: $author");
    print("Publication Year: $publication_year");
  }

  bool isOverTenYearsOld() {
    int cy = 2025;
    return cy - publication_year > 10;
  }
}
void main() {
  Book b1 = Book("abc", "xyz", 2004);
  b1.display();

  if(b1.isOverTenYearsOld()) {
    print("This book is over 10 years old.");
  } else {
    print("This book is not over 10 years old.");
  }
}