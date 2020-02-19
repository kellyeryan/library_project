let template = `
  <table id="bookTable">
      <thead>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Library</th>
          </tr>
        </thead>
      `

class Book {
  constructor(title, first_name, last_name, genre, library) {
    // this.id = id
    this.title = title
    this.first_name = first_name
    this.last_name = last_name
    this.genre = genre
    this.library = library
  }

static libraryTable(groupOfBooks) {

    groupOfBooks.forEach(function(currentBook) {
      const book = new Book(currentBook.title, currentBook.author.first_name, currentBook.author.last_name, currentBook.genre.name, currentBook.library.name)
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

    $.post(`/libraries/${library_id}/books.json`, values).done(function(info) {
      let book = new Book(info.title, info.author["last_name"], info.author["first_name"], info.genre["name"], info.library["name"])

      template += book.bookEl()
      template += "</table>"
      $(".postResults").append(template)
      $("input").val("")
    });
  });
})

$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    let catalogURL = event.target.href
    $.getJSON(`${catalogURL}`, function(info){
      Book.libraryTable(info)
    })
  })
})
