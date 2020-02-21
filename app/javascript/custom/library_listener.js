class Library {
  constructor(id, name, street_address, city, state, region) {
    this.id = id
    this.name = name
    this.street_address = street_address
    this.city = city
    this.state = state
    this.region = region
  }
}

$("#library-nearby").on("click", function(event){
  event.preventDefault();
  console.log(event)
})
