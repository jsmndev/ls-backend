# Mortgage Calculator

def prompt(message)
  puts "=> #{message}"
end

def get_input(prompt, err_msg, validation = :by_integer)
  loop do
    prompt(prompt)
    input = gets.chomp

    if valid_number?(input, validation)
      return input
    else
      prompt(err_msg)
    end
  end
end

def valid_number?(input, validation)
  case validation
  when :by_integer
    !input.empty? && input.to_i > 0

  when :by_float
    !input.empty? && input.to_f > 0
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
    "Enter loan amount:",
    "Enter a valid amount",
    :by_float
  ).to_f

  apr = get_input(
    "Enter APR (%):",
    "Enter a valid rate",
    :by_float
  ).to_f

  loan_term = get_input(
    "Enter loan term (in months):",
    "Enter a valid term"
  ).to_i

  #
  # Calculations
  #

  interest_rate = get_interest_rate(apr)

  monthly_payment = calculate_monthly_payment(
    loan_amount,
    interest_rate,
    loan_term
  )

  total_payments = monthly_payment * loan_term

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
