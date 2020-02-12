$(function(){
  let $info = $(".book_donation")
  $info.on("submit", function(event) {
    event.preventDefault();
    let data = event.target.elements
    let library_id = data[5]
    let values = $(data).serialize();
    console.log(values)

    var creation = $.post(`/libraries/${library_id.value}/books`, values);

    creation.done(function(info){
      console.log(info)
      let bookObject = new Book(info.title)
      console.log(bookObject)

      $(".postResults").append(bookObject.bookEl());
    });
  });
})


