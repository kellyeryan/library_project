class Book {
  constructor(title, last_name, first_name, genre) {
    // this.id = id
    this.title = title
    this.last_name = last_name
    this.first_name = first_name
    this.genre = genre
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
        </tr>
        <tr>
          <th>${this.title}</th>
          <th>${this.first_name} ${this.last_name}</th>
          <th>${this.genre}</th>
        </tr>
      </table>
    `
  }
}

$(function(){
  let $info = $(".book_donation")
  $info.on("submit", function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5]
    let values = $(data).serialize();

    console.log(values)

    $.post(`/libraries/${library_id.value}/books`, values).done(function(info) {
      let book = new Book(info.title, info.author["last_name"], info.author["first_name"], info.genre["name"])
      console.log(book)
      $(".postResults").append(book.bookEl());
      $("input").val("")
    });
  });
})
