require 'csv'

class GaiaSource
  class Import
    def gaia_source_csv(csv)
      gaia_sources = []
      size = CSV.read(csv, headers: true).count
      puts "Begin processing #{size} records..."
      CSV.foreach(csv, headers: true) do |row|
        gaia_source = create_gaia_source_from_row(row)
        gaia_sources << gaia_source if gaia_source.valid?
        puts "processed #{$INPUT_LINE_NUMBER - 1} of #{size}"
      end
      puts 'Done!'
      gaia_sources
    end

    private

    def create_gaia_source_from_row(row)
      data = row.to_h.symbolize_keys
      gaia = GaiaSource.create!(data)
      puts gaia.valid?
      gaia
    end
  end
end
