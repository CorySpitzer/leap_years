require 'rspec'
require './leap_years'

# We add a Leap Day on February 29, almost every four years. The leap day is an
# extra, or intercalary, day and we add it to the shortest month of the year,
# February.
#
# In the Gregorian calendar three criteria must be taken into account to
# identify leap years:
#
# The year can be evenly divided by 4;
# If the year can be evenly divided by 100, it is NOT a leap year, unless;
# The year is also evenly divisible by 400. Then it is a leap year.
#
# This means that in the Gregorian calendar, the years 2000 and 2400 are leap
# years, while 1800, 1900, 2100, 2200, 2300 and 2500 are NOT leap years.

describe '#leap_year?' do
  it 'identifies a multiple of 4 as a leap year' do
    expect(leap_year?(2016)).to eq true
  end

  it 'identifies an odd year as not a leap year' do
    expect(leap_year?(2015)).to eq false
  end

  # it 'identifies a multiple of 100 as not a leap year' do
  #   expect(leap_year?(2100)).to eq false
  # end
end

# describe '#leap_years' do
#   it 'identifies 2016 as a leap year' do
#     leap_years(2015, 2017).should eq [2016]
#   end
# end
