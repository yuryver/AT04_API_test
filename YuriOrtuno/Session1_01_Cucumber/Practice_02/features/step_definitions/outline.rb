Given(/^I have \$(\d+) in my account$/) do |balance|
  #Juts keep the value inserted
  @balance = balance.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
  #Juts keep the value inserted
  @withdraw= withdraw.to_i
end


Then(/^I should receive \$(\d+) cash$/) do |cash|
  #Just print the cash received
  puts "This is your $#{cash}"

end

And(/^the balance of my account should be \$(\d+)$/) do |remaining|
  @remaining_calculated = @balance - @withdraw
  expect(@remaining_calculated.to_s).to eql(remaining)
end
