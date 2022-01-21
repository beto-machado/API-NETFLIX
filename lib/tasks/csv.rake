require 'csv'

namespace :csv do
  desc "Import the netflix_titles.csv file"
  task import: :environment do
    counter = 0
    CSV.foreach("netflix_titles.csv", col_sep: ",", headers: true).with_index do |row, index|
      unless (index == 0)
        Netflix.create(show_id: row[0], type: row[1], title: row[2], director: row[3], cast: row[4], country: row[5],
                        date_added: row[6], release_year: row[7], rating: row[8], duration: row[9], listed_in: row[10], description: row[11]
                      )
        counter += 1
      end
    end

    puts "Imported #{counter} netflix titles."
  end
end

