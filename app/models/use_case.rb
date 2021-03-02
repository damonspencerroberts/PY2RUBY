class UseCase < ApplicationRecord
  belongs_to :python
  belongs_to :ruby
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_category,
    against: [ :title, :description, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
