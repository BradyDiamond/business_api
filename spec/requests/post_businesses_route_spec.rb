require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post '/businesses', params: { :name => 'test_name', :location => 'test_location' }
  end

  it 'returns the business name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the business location' do
    expect(JSON.parse(response.body)['location']).to eq('test_location')
  end


  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "post a route exeption", :type => :request do

  before do
    post '/businesses', params: { :name => 'test_name', :location => '' }
  end

  it 'returns an exeption' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end

describe "return not_found HTTP request", :type => :request do  
  before do
    post '/businesses', params: { :name => 'test_name', :location => 'test_location' }
    get '/businesses/0'
  end

    it 'returns not_found' do
      expect(response).to have_http_status(:not_found)
    end
end
