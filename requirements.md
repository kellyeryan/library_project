# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)

# library has_many books; author has_many books

- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)

# book belongs_to library, book belongs_to author

- [x] Includes at least one has_many through relationship (e.g. Recipe has_many Items through Ingredients)

# library has_many patrons through book_loans; library has_many book_loans through books

- [x] Every model contains at least at least two simple attributes (e.g. ingredient#quantity)

# need to add one to book_loan

- [X] Includes reasonable validations

first and last name required for patrons upon sign up
patron password needs to be between 8 and 20 letters

- [x] Includes a class level ActiveRecord scope method

BookLoans checked_out true scope

- [x] Includes signup, login and logout functionality (e.g. Devise)


- [x] Includes nested resource show or index (e.g. users/2/recipes)


- [x] Includes nested resource form (recipes/1/ingredients/new)


- [X] Includes form display of validation errors

If patron sign-up doesn't meet requirements, it will trigger validation errors.

- [x] Includes Unit tests for at least 2 of your models

- [ ] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)

- [ ] Includes a `README.md` with an application description and installation guide

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:
