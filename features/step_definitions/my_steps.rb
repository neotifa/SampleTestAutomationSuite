
Given(/^there are (\d+) cukes$/) do |arg|
  p "there are #{arg} cukes"
end

Then(/^the (\d+) cukes are less than (\d+)$/) do |arg1, arg2|
  raise Exception.new "Validation Error! #{arg1} is not less than #{arg2}" unless arg1 < arg2
  p 'test passed!!!'
end

################OSU Steps#####################

Given(/^the user opens a browser$/) do
  @browser = Watir::Browser.new :chrome
  @browser.driver.manage.window.maximize
end

And(/^the user navigates to (.*)$/) do |url|
  @browser.goto url
end

Then(/^the user validates the url is (.*)$/) do |url|
  current_url = @browser.url
  raise Exception.new "Not on the expected page: on #{current_url} instead of #{url}" unless current_url == url
end

And(/^the user goes to Carmen$/) do
  visit(CarmenBasePage)
end

When(/^the user logs into their account$/) do
  # helps if you actually click the log in button hurr durr
  sleep(2)
  on_page(CarmenBasePage).login_element.click
  sleep(2)
  on_page(LogInPage) do |page|
    page.enter_username
    page.enter_password
    page.submit
  end
end

And(/^clicks the link for this course$/) do
  on_page(CarmenCoursesPage).nav_to_class
end

And(/^enters the chatroom$/) do
  on_page(ProjCourseHomePage).enter_chatroom
  # you can also do:
  # on_page(ProjCourseHomePage).chat_element.click
  # or even:
  # on_page(ProjCourseHomePage).chat_element
end

Then(/^the user is able to post a test message$/) do |table|
  # table is a table.hashes.keys # => [:#### Automation Test ####]
  table.raw.flatten.each do |msg|
    on_page(ChatPage).send_msg(msg)
  end
end