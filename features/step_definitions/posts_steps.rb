Given /^I am logged in as administrator$/ do
  Given "I am on the login page"
  When 'I fill in "admin_email" with "admin@admins.com"'
  When 'I fill in "admin_password" with "abcd1234"'
  When 'I press "admin_submit"'
end

When /^I click the 'Add New Post' button$/ do
  click_link('new-post-button')
end

When /^I input data$/ do
  fill_in('post_title', :with => "Test Post")
  fill_in('post_author', :with => "Test Author")
  fill_in('post_slug', :with => "test-post")
end

Given /^I have a post already$/ do
  Given "I am on the New Post page"
  When "I input data"
  When 'I press "post_submit"'
end

When /^(?:|I )click "([^\"]*)"$/ do |link|
  click_link(link)
end