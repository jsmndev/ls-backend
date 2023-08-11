# Your Age in Months
# Write a program that asks the user for their age in years, and then converts
# that age to months.
#
# Examples:
# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.

puts ">> What is your age in years?"
age = gets.to_i
puts "You are #{age * 12} months old."


# LS Answer
puts ">> What is your age in years?"
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old."

# Further Exploration
# What happens if you enter a non-numeric value for the age?
# - Integer#to_i converts the non-numeric value to 0
