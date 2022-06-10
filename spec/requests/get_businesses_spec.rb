require 'rails_helper'

describe "get all paginated businesses route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 20)}

  # before { get '/businesses'}

  it 'returns paginated businesses' do
    get '/businesses'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns second page of animals' do
    get '/businesses?page=2'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    get '/businesses'
    expect(response).to have_http_status(:success)
  end
end 
