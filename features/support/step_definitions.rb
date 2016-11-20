When /^I go to "([^\"]*)" it raises an "([^\"]*)"$/ do |url,error|
	expect {
	  step %Q{I go to "#{url}"}
	}.to raise_error(/#{error}/)
end
