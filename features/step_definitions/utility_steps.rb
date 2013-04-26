Then /^show me the page$/ do
  save_and_open_page
end

Then /^evaluate shit$/ do
  raise Inventor::Project.count.inspect
end

And /^I sleep for (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

And /^I click the link "(.*?)"$/ do |link|
  click_link link
end

And /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, :with => value
end

And /^I click the button "(.*?)"$/ do |caption|
  click_on caption
end

And /^I select "(.*?)" from "(.*?)"$/ do |value, list|
  select value, :from => list
end