# Mortgage Calculator

def prompt(message)
  puts "=> #{message}"
end

# this function builds out a user input and takes in
# a hash with the following fields:
#  - :prompt (String) - prompt the input's message
#  - :err_msg (String) - prompt an error message
#  - :validate_by (Symbol) - what kind of number input to validate.
#       it accepts :by_integer or :by_float
def get_input(attrs)
  loop do
    prompt(attrs[:prompt])
    input = gets.chomp

    case attrs[:validate_by]
    when :by_integer
      return input if !input.empty? && input.to_i > 0

    when :by_float
      return input if !input.empty? && input.to_f > 0
    end

    prompt(attrs[:err_msg])
  end
end

# Get monthly interest rate
def get_interest_rate(apr)
  (apr / 100.0) / 12.0
end

def calculate_monthly_payment(amount, interest_rate, term)
  amount * (interest_rate / (1 - ((1 + interest_rate)**(-term))))
end

def calculate_total_interest(amount, interest_rate, term, monthly_payment)
  balance_remaining = amount
  duration = term
  total_interest = 0

  loop do
    interest = balance_remaining * interest_rate
    principle = monthly_payment - interest
    balance_remaining -= principle
    total_interest += interest
    duration -= 1
    break if duration == 0
  end

  total_interest
end

#
# Program starts here
#

prompt("Welcome to Mortgage Calculator!")

#
# Get inputs
#

loop do
  loan_amount = get_input(
    {
      prompt: "Enter loan amount:",
      err_msg: "Enter a valid amount",
      validate_by: :by_float
    }
  ).to_i

  apr = get_input(
    {
      prompt: "Enter APR (%):",
      err_msg: "Enter a valid rate",
      validate_by: :by_float
    }
  ).to_f

  loan_term = get_input(
    {
      prompt: "Enter loan term (in months):",
      err_msg: "Enter a valid term",
      validate_by: :by_integer
    }
  ).to_i

  #
  # Calculations
  #

  # Get monthly interest rate
  interest_rate = get_interest_rate(apr)

  # Calculate monthly payment
  monthly_payment = calculate_monthly_payment(
    loan_amount,
    interest_rate,
    loan_term
  )

  # Calculate total payments
  total_payments = monthly_payment * loan_term

  # Calculate total interest
  total_interest = calculate_total_interest(
    loan_amount,
    interest_rate,
    loan_term,
    monthly_payment
  )

  results = <<-RESULTS_PROMPT
  Results:
  Payment every month: $#{format('%.2f', monthly_payment)}
  Total of #{loan_term} payments: $#{format('%.2f', total_payments)}
  Total interest: $#{format('%.2f', total_interest)}
  RESULTS_PROMPT

  prompt(results)

  prompt("Do you want to caculate again? (Y to calculate again)")
  do_it_again = gets.chomp
  break unless do_it_again.downcase.start_with?('y')
end

prompt("Thank you for using Mortgage Calculator, goodbye!")
