Given /^I've enabled the tasseo module$/ do
  pending
  resources << """
  include tasseo
  """
end

Then /^"(.*?)" should contain Tasseo$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

