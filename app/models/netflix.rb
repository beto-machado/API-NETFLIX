class Netflix < ApplicationRecord
  include PgSearch

  validates :show_id, :type, :title, :director, :cast, :country, :date_added,
            :release_year, :rating, :duration, :listed_in, :description,
            presence: true
  validates :show_id, uniqueness: true

  pg_search_scope :search,
                  against: [
                    [:release_year, 'A'],
                    [:type, 'A'],
                    [:country, 'A']
                  ],
                  ignoring: :accents,
                  using: {
                    trigram: { word_similarity: true },
                    tsearch: {}
                  }

  scope :sorted, ->{ order(release_year: :desc) }

  self.inheritance_column = :_type_disabled
end
