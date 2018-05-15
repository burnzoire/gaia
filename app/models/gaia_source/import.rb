require 'csv'

class GaiaSource
  class Import
    def gaia_source_csv(csv)
      gaia_sources = []
      puts 'Counting records...'
      size = CSV.read(csv, headers: true).count
      puts "Begin processing #{size} records..."
      CSV.foreach(csv, headers: true) do |row|
        gaia_source = create_from_row(row)
        if gaia_source.valid?
          gaia_sources << gaia_source
          percent = ($INPUT_LINE_NUMBER - 1) / size.to_f * 100
          print "\r"
          print "processing #{percent.round(2).to_s.ljust(4, '0')}%     "
        end
      end
      print "\r"
      print 'Done!                                 '
      gaia_sources
    end

    private

    def create_from_row(row)
      data = row.to_h.symbolize_keys
      gaia = GaiaSource.create!(data)
      gaia
    end
  end
end
