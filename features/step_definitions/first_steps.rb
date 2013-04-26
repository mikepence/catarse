Given /^something true$/ do
  true
end

Given /^some data$/ do
  FactoryGirl.create(:user)
end

Given /^no data$/ do
  User.count.should be 0
end