# Weather Forecast
# Our predict_weather method should output a message indicating whether a sunny 
# or cloudy day lies ahead. However, the output is the same every time the 
# method is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# This is happening because the values inside of the array being passed in to
# #sample are strings and we know that everything is a truthy value in Ruby
# except for nil and false. Therefore, whatever is chosen by #sample, the
# condition in the if statement always evaluates to true. Changing the samples
# to boolean values will fix this.

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
