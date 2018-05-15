require 'rake'

desc 'Command line tasks for importing data'
namespace :gaia do

  desc 'Import Gaia Source data'
  task :import, [:file] => :environment do |_task, args|
    file = args[:file]
    raise 'file not found' unless File.exist?(file)
    GaiaSource::Import.new.gaia_source_csv(file)
  end

end
