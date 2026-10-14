import Foundation

print("=== Task 3.15: Library Management System ===")

class Book {
    let id: String
    let title: String
    let author: String

    init(id: String, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
}

class Library {
    private var books: [Book] = []

    func addBook(_ book: Book) {
        books.append(book)
        print("Added: '\(book.title)' by \(book.author)")
    }

    func removeBook(byId id: String) -> Bool {
        if let index = books.firstIndex(where: { $0.id == id }) {
            let removed = books.remove(at: index)
            print("Removed: '\(removed.title)' (ID: \(id))")
            return true
        }
        print("Book with ID \(id) not found.")
        return false
    }

    func search(byTitle title: String) -> [Book] {
        return books.filter { $0.title.localizedCaseInsensitiveContains(title) }
    }

    func listBooks() {
        print("\n--- Current Books in Library (\(books.count) total) ---")
        if books.isEmpty {
            print("The library is currently empty.")
        } else {
            for book in books {
                print("[\(book.id)] \"\(book.title)\" by \(book.author)")
            }
        }
    }
}

let library = Library()

library.addBook(Book(id: "SW-01", title: "The Swift Programming Language", author: "Apple Inc."))
library.addBook(Book(id: "CS-02", title: "Clean Architecture", author: "Robert C. Martin"))
library.addBook(Book(id: "DP-03", title: "Design Patterns in Swift", author: "Erich Gamma"))

library.listBooks()

print("\nSearching for 'Swift':")
let searchResults = library.search(byTitle: "Swift")
for b in searchResults {
    print("Found: \(b.title)")
}

print()
library.removeBook(byId: "CS-02")
library.listBooks()
