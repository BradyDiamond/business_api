require 'rails_helper'

describe "update businesses route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 20)}
  before do
  put  "/businesses/#{Business.first.id} params: {:name => 'mr juggs' :location => "anytown USA"}
end 
expect(reponse).to have_http_status(200)
expect(reponse.body).to eq("This business has been sucessfully updated")
end
end  
