class Book {
  constructor(title, author, genre, library) {
    // this.id = id
    this.title = title
    this.author = author
    this.genre = genre
    this.library = library
  }

  bookCatalogEl() {
   console.log(this)
    return `
      <table>
        <tr>
          <th>Title</th>
  //         <th>Author</th>
  //         <th>Genre</th>
  //         <th>Library</th>
  //         <th>Book Status</th>
  //         <th>Check Out</th>
        </tr>
        <% ${this}.each do |book| %>
        <tr>
          <td>
            <%= ${book.title} %>
          </td>
  //         <td><%= ${book.last_name}, ${book.first_name} %></td>
  //         <td><%= ${book.genre} %></td>
  //         <td><%= ${book.library} %></td>
  //       // <td>
  //       //   <% if this.checked_out? %>
  //       //     <%= "Book already checked out!" %>
  //       //   <% else %>
  //       //     <%= "Available" %>
  //       //   <% end %>
  //       // </td>
  //       // <td>
  //       //   <% if !this.checked_out? %>
  //       //     <%= form_with(model: this.book_loans.build) do |f| %>
  //       //       <input type="hidden" name="book_id" value="<%= this.id %>" />
  //       //       <%= f.submit "Check out this book" %>
  //       //     <% end %>
  //       //   <% end %>
  //       // </td>
        <% end %>
  //     </tr>
  //   </table>
  //   `
  }
}

$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    console.log(event)
    let catalogURL = event.target.href
    console.log(catalogURL)
    $.getJSON(`${catalogURL}`, function(info){
      console.log(this)
      console.log(info)
      console.log(info[0])
      let value = info[0]
      $(".js-catalog").append($(value.bookCatalogEl()))
    })
  })
})
