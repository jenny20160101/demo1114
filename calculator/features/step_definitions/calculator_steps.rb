Given /^the input "([^"]*)"$/ do |input|
#  pending # Write code here that turns the phrase above into concrete actions
	@input=input
end

When /^the calculator is run$/ do
  #pending # Write code here that turns the phrase above into concrete actions
  @output = `ruby calc.rb #{@input}`
  raise("command failed!") unless $?.success?
end

Then /^the output should be "([^"]*)"$/ do |expected_output|
 # pending # Write code here that turns the phrase above into concrete actions
 #@output.should == expected_output
 #expect( @output).output  == expected_output
 expect(@output).to eq(expected_output)
end