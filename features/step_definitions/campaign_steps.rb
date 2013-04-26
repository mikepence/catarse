And /^I click on the start new campaign link$/ do
  click_link_or_button 'new-campaign'
end

And /^a campaign$/ do
  @campaign = FactoryGirl.create(:project, :visible => true)
end

And /^a cause$/ do
  @cause = FactoryGirl.create(:cause)
end

And /^a category$/ do
  @category = FactoryGirl.create(:category)
end

And /^some causes and some categories/ do
  3.times {Given "a cause"}
  3.times {Given "a category"}
end
