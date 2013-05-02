Feature: Cofunder starts a campaign
  As a student cofunder
  In order to begin my fundraising campaign
  I should be able to fill out a campaign worksheet

  Scenario: with all required data
    Given me as a logged in user
    And a campaign
    And some causes and some categories
    And I visit the home page
    And I click on the start new campaign link
    And I sleep for 10 seconds
    And I fill in "Title" with "Some title"
    And I fill in "Short description" with "A short description"
    And I fill in "Campaign link" with "my_link"
    And I select "Cause 1" from "Cause"
    And I select "Category 1" from "Category"
    And I select "Algeria" from "Country"
    And I fill in "City" with "Sarasota"
    And I fill in "Goal" with "1000"
    And I fill in "Days" with "30"
    And I fill in "Primary media" with "something"
#    And show me the page
    And I fill in "Here are some details" in the CKEditor instance "campaign_worksheet_pitch"
#    And I fill in the editor for "campaign_worksheet_pitch" with "my pitch"
    # pitch media (embed.ly)
    # pitch text (rich edit)

    And I click the button "Save"

#    see mind map with refining stuff
#    And show me the page
#    And I click on the updates tab
