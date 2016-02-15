
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# def leap_years(start, finish)
#   years = []
#   (start..finish).each do year
#     if leap_year? year
#       years << year
#     end
#   end
#   years
# end
