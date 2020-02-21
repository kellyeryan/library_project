let template = `
  <table id="bookTable">
      <thead>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Library</th>
            <th>Book Status</th>
            <th>Check Out</th>
          </tr>
        </thead>
      `

class Book {
  constructor(title, first_name, last_name, genre, library, bookStatus, id, bookLoans) {
    this.id = id
    this.title = title
    this.first_name = first_name
    this.last_name = last_name
    this.genre = genre
    this.library = library
    this.bookStatus = bookStatus
    this.bookLoans = bookLoans
  }

  static libraryTableEl(groupOfBooks) {
    groupOfBooks.forEach(function(currentBook) {
      if (currentBook.book_loans.length === 0) {
        currentStatus = "Available"
      } else if (currentBook.book_loans[3] === true) {
        currentStatus =  "Available"
      } else {
        currentStatus =  "Book already checked out"
      }
      const book = new Book(currentBook.title,
                            currentBook.author.first_name,
                            currentBook.author.last_name,
                            currentBook.genre.name,
                            currentBook.library.name,
                            currentStatus,
                            currentBook.id,
                            currentBook.book_loans)
      template += book.bookEl()
    })
    template += "</table>"
    return template
  }

  bookEl() {
    return `
    <tbody>
      <tr>
        <td>${this.title}</td>
        <td>${this.last_name}, ${this.first_name}</td>
        <td>${this.genre}</td>
        <td>${this.library}</td>
        <td>${this.bookStatus}</td>
        <td>
          <form action="/book_loans" accept-charset="UTF-8" data-remote="false" method="post">
            <input type="hidden" name="book_id" value="${this.id}">
            <input type="submit" name="commit" value="Check out this book" data-disable-with="Check out this book">
          </form>
        </td>
      </tr>
    </tbody>
    `
  }
}

$(document).ready(function() {
  $(".book_donation").submit(function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5].value
    let values = $(data).serialize();

    $.post(`/libraries/${library_id}/books.json`, values).done(function(info) {
      let book = new Book(info.title, info.author["first_name"], info.author["last_name"], info.genre["name"], info.library["name"], info["bookStatus"])

      template += book.bookEl()
      template += "</table>"
      $(".postResults").append(template)
      $("input:text").val("")
    });
  });


  $(".js-browse").on("click", function(event){
    event.preventDefault();
    let catalogURL = event.target.href
    $.getJSON(`${catalogURL}`, function(groupOfBooks){
      $(".js-catalog").append(Book.libraryTableEl(groupOfBooks))
    })
  })
})

$(document).ready(function() {
  $("#book-details").on("submit", function(event) {
    event.preventDefault();
    console.log(event)
    console.log(this)
  })
})

