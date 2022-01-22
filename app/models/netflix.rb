# frozen_string_literal: true
class Netflix < ApplicationRecord
  include PgSearch::Model

  validates :show_id, uniqueness: true

  pg_search_scope :search,
                  against: [
                    [:release_year, 'A'],
                    [:type, 'A'],
                    [:country, 'A']
                  ]

  scope :sorted, ->{ order(release_year: :desc) }

  self.inheritance_column = :_type_disabled
end
