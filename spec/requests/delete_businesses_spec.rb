require 'rails_helper'
describe "delete a business route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 20)}
  before do
    delete "/businesses/1"
  expect(reponse).to have_http_status(200)
  expect(reponse.body).to eq("This business has been sucessfully deleted" )
  end
end  