class Book {
  constructor(title, last_name, first_name, genre, library) {
    // this.id = id
    this.title = title
    this.last_name = last_name
    this.first_name = first_name
    this.genre = genre
    this.library = library
  }

  bookCatalogEl() {
    return `
      <table>
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Genre</th>
          <th>Library</th>
          <th>Book Status</th>
          <th>Check Out</th>
        </tr>
        <% @books.each do |book| %>
        <tr>
          <td>
            <%= link_to book.title, library_book_path(@library, book) %>
          </td>
          <td><%= book.author.author_name %></td>
          <td><%= book.genre.name %></td>
          <td><%= book.library.name %></td>
        <td>
          <% if book.checked_out? %>
            <%= "Book already checked out!" %>
          <% else %>
            <%= "Available" %>
          <% end %>
        </td>
        <td>
          <% if !book.checked_out? %>
            <%= form_with(model: book.book_loans.build) do |f| %>
              <input type="hidden" name="book_id" value="<%= book.id %>" />
              <%= f.submit "Check out this book" %>
            <% end %>
          <% end %>
        </td>
        <% end %>
      </tr>
    </table>
    `
  }
}

$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    console.log(event)
    let catalogURL = event.target.href
    console.log(catalogURL)
    $.get(`${catalogURL}`, function(data){
      console.log(data)
      $(".js-catalog").append($(data))
    })
  })
})
