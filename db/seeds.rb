require 'spreadsheet'

def seed_result
  Dir.glob('db/sources/*.xls') do |file|
    book = Spreadsheet.open file
    sheet = book.worksheet 0
    field = sheet.row(0)[0]
    field_short = /^TABLE \d\d.[[:space:]]+(.*?) degrees awarded/.match(field)[1]
    puts 'field_short:' << field_short
    (4..56).each do |i|
      field_year_row = sheet.row(i)
      next unless field_year_row[0].to_s =~ /\d{4}/
      field_obj = Field.find_or_create_by(name: field_short)
      DegreesByFieldYear.create(
        :field            => field_obj,
        :year             => field_year_row[0].to_i,
        :bachelor_all     => field_year_row[2].to_i,
        :bachelor_male    => field_year_row[3].to_i,
        :bachelor_female  => field_year_row[4].to_i,
        :master_all       => field_year_row[6].to_i,
        :master_male      => field_year_row[7].to_i,
        :master_female    => field_year_row[8].to_i,
        :doctorate_all    => field_year_row[10].to_i,
        :doctorate_male   => field_year_row[11].to_i,
        :doctorate_female => field_year_row[12].to_i,
      )

      # create better searchable rows
      # ignoring totals which would effetively be sex=null + sex=f + sex=m
      # add that in if real totals are desired.
      # TODO: bug with null or N/A values. should allow nil through to DB.
      {
        bachelor: {m: 3,f: 4},
        master: {m: 7, f: 8},
        doctorate: {m: 11, f:12 }
      }.each_pair do |level, sex_row|
        sex_row.each_pair do |sex, row|
          DegreesByFieldYearSex.create(
            :field => field_obj,
            :year => field_year_row[0].to_i,
            :level => level,
            :sex  => sex,
            :count => field_year_row[row]
          )
        end
      end
    end
  end
end
seed_result
