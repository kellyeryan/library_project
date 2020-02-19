const TABLE_HEADER = `<table>
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Genre</th>
          <th>Library</th>
        </tr>
        `
const TABLE_BODY =
    `
          <tr>
            <td> ${this.title} </td>
            <td> ${this.last_name}, ${this.first_name} </td>
            <td> ${this.genre} </td>
            <td> ${this.library} </td>
        </tr>
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
    groupOfBooks.forEach(function(currentBook) {
      const book = new Book(currentBook.title, currentBook.author.first_name, currentBook.author.last_name, currentBook.genre.name, currentBook.library.name)
        template += book.bookCatalogEl()
    })
    template += "</table>"
   $(".js-catalog").append(template)
}

  bookCatalogEl() {
   console.log(this)
    return `
          <tr>
            <td> ${this.title} </td>
            <td> ${this.last_name}, ${this.first_name} </td>
            <td> ${this.genre} </td>
            <td> ${this.library} </td>
        </tr>
    `
  }

    bookEl() {
    console.log(this)
    return `
      <h3 align="left">Thank you for your donation!</h3>
      <h3 align="left">Books Donated:</h3>
      <table>
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Genre</th>
          <th>Library</th>
        </tr>
        <tr>
          <td>${this.title}</td>
          <td>${this.first_name} ${this.last_name}</td>
          <td>${this.genre}</td>
          <td>${this.library}</td>
        </tr>
      </table>
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

      $(".postResults").append(book.bookEl());
      $("input:text").val("")
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
