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
        <tr>
          <th>${this.title}</th>
          <th>${this.first_name} ${this.last_name}</th>
          <th>${this.genre}</th>
          <th>${this.library}</th>
        </tr>
      </table>
    `
  }
}

$(document).ready(function() {
  $("form").submit(function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5].value
    let values = $(data).serialize();

    $.post(`/libraries/${library_id}/books.json`, values).done(function(info) {
      let book = new Book(info.title, info.author["last_name"], info.author["first_name"], info.genre["name"], info.library["name"])
      console.log("In the promise")

      $(".postResults").append(book.bookEl());
      $("input:text").val("")
    });
  });
})
