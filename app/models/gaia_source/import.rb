require 'csv'

class GaiaSource
  class Import
    def gaia_source_csv(csv)
      gaia_sources = []
      CSV.foreach(csv, headers: true) do |row|
        gaia_source = create_gaia_source_from_row(row)
        puts gaia_source.valid?
        gaia_sources << gaia_source if gaia_source.valid?
      end
      gaia_sources
    end

    private

    def create_gaia_source_from_row(row)
      GaiaSource.create!(row.to_h)
    end
  end
end
