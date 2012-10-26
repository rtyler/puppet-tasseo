Given /^I've enabled the tasseo module$/ do
  resources << """
  include tasseo
  """
end

Then /^"(.*?)" should contain Tasseo$/ do |arg1|
  exists = vm.ssh_into('test -f /srv/tasseo/.git/config')
  expect(exists).to be_true
end

