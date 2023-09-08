def calculate_monthly_payment(p, j, n)
  p * (j / (1 - (1 + j)**(-n)))
end

amount = 100_000
interest_rate = 0.06 / 12
duration = 120
monthly_payment = calculate_monthly_payment(amount, interest_rate, duration)
total_payments = monthly_payment * duration

p "Monthly payment: #{monthly_payment}"
p "Total of 120 payments: #{total_payments}"

balance = amount
total_interest = 0
loop do
  interest = balance * interest_rate
  principle = monthly_payment - interest
  balance = balance - principle
  total_interest += interest
  duration -= 1
  break if duration == 0
end

p "total_interest: #{total_interest}"
