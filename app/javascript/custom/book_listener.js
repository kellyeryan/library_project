class Book {
  constructor(title, last_name, first_name, genre, library) {
    // this.id = id
    this.title = title
    this.last_name = last_name
    this.first_name = first_name
    this.genre = genre
    this.library = library
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
        ${this.tableRow()}
      </table>
    `

    tableRow() {
      return `
        <tr>
          <td>${this.title}</td>
          <td>${this.first_name} ${this.last_name}</td>
          <td>${this.genre}</td>
          <td>${this.library}</td>
        </tr>
      `
    }
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
