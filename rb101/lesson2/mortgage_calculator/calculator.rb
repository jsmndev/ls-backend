# Mortgage Calculator

# @TODO cover edge cases on these validation methods
def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

def valid_integer?(input)
  input.to_i.to_s == input
end

def valid_float?(input)
  input.to_f.to_s == input
end

def get_input(attrs)
  loop do
    puts ">> #{attrs[:prompt]}:"
    input = gets.chomp

    case attrs[:validate_by]
    when :by_integer
      return input if valid_integer?(input)

    when :by_float
      return input if valid_float?(input)

    when :by_number
      return input if valid_number?(input)
    end

    puts ">> #{attrs[:err_msg]}"
  end
end

# Get monthly interest rate
def get_interest_rate(apr)
  (apr / 100.0) / 12.0
end

# Get loan term (in months)
def get_loan_term(years, months)
  # Convert loan term in years to months and add it to
  # the loan term in months
  (years * 12) + months
end

def calculate_monthly_payment(amount, apr, term_in_years, term_in_months)
  # Get monthly interest rate
  interest_rate = get_interest_rate(apr)
  # Get loan term (in months)
  loan_term = get_loan_term(term_in_years, term_in_months)

  # Calculate monthly payment
  amount * (interest_rate / (1 - (1 + interest_rate)**(-loan_term)))
end
#
# Get inputs
#

loan_amount = get_input({
  prompt: "Enter loan amount",
  err_msg: "Enter a valid amount",
  validate_by: :by_integer
}).to_i

apr = get_input({
  prompt: "Enter APR (%)",
  err_msg: "Enter a valid rate",
  validate_by: :by_number
}).to_f

puts ">> Enter loan term in years and/or in months:"

loan_term_in_years = get_input({
  prompt: "in years",
  err_msg: "Enter a valid term",
  validate_by: :by_integer
}).to_i

loan_term_in_months = get_input({
  prompt: "in months",
  err_msg: "Enter a valid term",
  validate_by: :by_integer
}).to_i

#
# Calculations
#

# Calculate monthly payment
monthly_payment = calculate_monthly_payment(
                    loan_amount,
                    apr,
                    loan_term_in_years,
                    loan_term_in_months
                  )

puts monthly_payment
