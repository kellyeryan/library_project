let template = `
  <table id="bookTable" class="table table-hover">
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
  constructor(title, first_name, last_name, genre, library, bookStatus, id, bookLoans, description) {
    this.id = id
    this.title = title
    this.first_name = first_name
    this.last_name = last_name
    this.genre = genre
    this.library = library
    this.bookStatus = bookStatus
    this.bookLoans = bookLoans
    this.description = description
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
                            currentBook.book_loans,
                            currentBook.description)
      template += book.bookEl()
    })
    template += "</table>"
    return template
  }

  bookEl() {
    let bookEl = `
      <tbody>
        <tr>
          <td>${this.title}</td>
          <td>${this.last_name}, ${this.first_name}</td>
          <td>${this.genre}</td>
          <td>${this.library}</td>
          <td>${this.bookStatus}</td>
      `

      let checkOutButton = `
        <td>
          <form action="/book_loans" accept-charset="UTF-8" data-remote="false" method="post">
            <input type="hidden" name="book_id" value="${this.id}">
            <input type="submit" name="commit" value="Check out this book" data-disable-with="Check out this book">
          </form>
        </td>`

      let noCheckOutButton = `
        <td>
        </td>`

      let endOfTable = `
        </tr>
      </tbody>
    `

    if (this.bookStatus === "Available") {
      return bookEl.concat(checkOutButton, endOfTable)
    } else {
      return bookEl.concat(noCheckOutButton, endOfTable)
    }
  }
}

$(document).ready(function() {
  $("#book_donation").submit(function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5].value
    let values = $(data).serialize();

    $.post(`/libraries/${library_id}/books.json`, values).done(function(info) {
      let book = new Book(info.title, info.author["first_name"], info.author["last_name"], info.genre["name"], info.library["name"], info["book_status"])
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

  $(".js-book-details").on("click", (function(event) {
    event.preventDefault();
      let bookURL = event.currentTarget.action
      $.getJSON(`${bookURL}`, function(data) {
        let bookID = data.id
        $(`#${bookID}`).empty().append(data.description)
      })
  }))
})

