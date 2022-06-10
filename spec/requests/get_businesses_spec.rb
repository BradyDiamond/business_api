require 'rails_helper'

describe "get all paginated businesses route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 20)}

  before { get '/businesses'}

  it 'returns paginated businesses' do
    expect(JSON.parse(response.body).size).to eq(5)
  end


  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end 
