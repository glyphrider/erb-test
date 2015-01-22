require 'rubygems'
require 'rest_client'

When(/^I GET (.*)$/) do |url|
  @response = RestClient.get url
end

When(/^I POST (.*?) to (.*)$/) do |json,url|
  @response = RestClient.post url,json
end


Then(/^I receive (.*)$/) do |body|
  expect(@response.code).to eq(200)
  expect(@response.body).to eq(body)
end
