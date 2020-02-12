$(function (){
  $(".js-browse").on("click", function(event){
    event.preventDefault();
    console.log(event);
    console.log(this)
    console.log(event.target.href)
    let catalogURL = event.target.href
    $.get(`${catalogURL}`, (function(data){
      console.log(data)
    }))
  })
})
