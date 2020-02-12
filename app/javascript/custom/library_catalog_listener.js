$(function(){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    console.log(event)
    let catalogURL = event.target.href
    console.log(catalogURL)
    $.get(`${catalogURL}`, (function(data){
      $(".js-catalog").append($(data))
    }))
  })
})
