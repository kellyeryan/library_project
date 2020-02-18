# frozen_string_literal: true

class Books::IndexSerializer < BookSerializer
  has_one :author
end
