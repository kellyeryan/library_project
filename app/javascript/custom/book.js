'use strict';

class Book {
  constructor(title, id) {
    this.id = id
    this.title = title
  }

  bookEl() {
    console.log(this)
    return
      `<div id="postResult">
        <li="book-${this.id}" data-id="${this.id}>">
          <h2 align="center"> Title: ${this.title} </h2>
        </li>
      </div>`
    }
  }

//   <div id="postResult">
// <h2 id="donationMessage"></h2>
// <h3 id="bookTitle"></h3>
// <h3 id="bookAuthorName"></h3>
// <h3 id="genreName"></h3>
// <h4 id="catalogLink"></h4>
// </div>
