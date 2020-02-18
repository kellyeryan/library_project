class Book {
  constructor(title, first_name, last_name, genre, library) {
    // this.id = id
    this.title = title
    this.first_name = first_name
    this.last_name = last_name
    this.genre = genre
    this.library = library
  }

  bookCatalogEl() {
   console.log(this)

    return `
      <table>
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Genre</th>
          <th>Library</th>
        </tr>
        <tr>
          <th> ${this.title} </th>
          <th> ${this.last_name}, ${this.first_name} </th>
          <th> ${this.genre} </th>
          <th> ${this.library} </th>
      </tr>
    </table>
    `
  }
}

$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    let catalogURL = event.target.href
    $.getJSON(`${catalogURL}`, function(info){
      for (i = 0; i < info.length; i++) {
        let book = new Book(info[i].title, info[i].author.first_name, info[i].author.last_name, info[i].genre.name, info[i].library.name)
        $(".js-catalog").append($(book.bookCatalogEl()))
      }
    })
  })
})
