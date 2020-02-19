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
  constructor(title, first_name, last_name, genre, library, bookStatus, id) {
    this.id = id
    this.title = title
    this.first_name = first_name
    this.last_name = last_name
    this.genre = genre
    this.library = library
    this.bookStatus = bookStatus
  }

static libraryTable(groupOfBooks) {
    groupOfBooks.forEach(function(currentBook) {

      console.log(currentBook)

        if (currentBook.book_loans.length === 0) {
          currentStatus = "Available"
        } else if (currentBook.book_loans[3] === false) {
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
                            currentBook.id)

        template += book.bookEl()
    })

      template += "</table>"

   $(".js-catalog").append(template)
}

    bookEl() {
    return `
          <tr>
            <td> ${this.title} </td>
            <td> ${this.last_name}, ${this.first_name} </td>
            <td> ${this.genre} </td>
            <td> ${this.library} </td>
            <td> ${this.bookStatus} </td>
            <td> <button type="submit" class="checkOutButton" id="book-${this.id}" data-id="${this.id}">Check out this book</button> </td>
        </tr>
    `
  }
}


$(document).ready(function() {
  $(".book_donation").submit(function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5].value
    let values = $(data).serialize();
    console.log(values)

    $.post(`/libraries/${library_id}/books.json`, values).done(function(info) {
      console.log(info)
      let book = new Book(info.title, info.author["first_name"], info.author["last_name"], info.genre["name"], info.library["name"], info["bookStatus"])

      template += book.bookEl()
      template += "</table>"
      $(".postResults").append(template)
      $("input:text").val("")
    });
  });
})

$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    let catalogURL = event.target.href
    $.getJSON(`${catalogURL}`, function(groupOfBooks){
      Book.libraryTable(groupOfBooks)
    })
  })
})

$(document).ready(function(){
  $(".js-catalog").on("click", ".checkOutButton", function(event){
    event.preventDefault();
    console.log(event)
    let checkedOut = event.target.id
    let bookId = event.target.dataset.id
    let baseURL = event.target.baseURI
    console.log(bookId)
    console.log(baseURL)
    console.log(`${baseURL}/books/${bookId}`)
    if (checkedOut === "Available") {
      window.location.href = `${baseURL}/books/${bookId}`

    } else {
      $(".checkOutButton").text("Not Available")
    }

  })
})
