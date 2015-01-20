require 'rubygems'
require 'rest_client'

When(/^I GET (.*)$/) do |url|
  @response = RestClient.get url
end

Then(/^I receive (.*)$/) do |body|
  expect(@response.code).to eq(200)
  expect(@response.body).to eq(body)
end
