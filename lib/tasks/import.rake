namespace :import do
  desc "Import task for tournament 2020"
  task import_tournament_2020: :environment do
    # tournaments_list = JSON.parse(File.read('tournaments.json'))

    # tournaments_list.each do |tournament|
    #   @existing_tournament = Tournament.find_by title: tournament.title
    #   if(@existing_tournament?)
    #     Tournament.create(tournament.to_h)
  end
end
