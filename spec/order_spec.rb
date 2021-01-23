require 'spec_helper'
require 'yaml'

describe 'Orders Requests' do
  woocommerceApi = ClientApi::Api.new
  payload = YAML.load(File.read('./data/order.yml'))
  orderId = nil

  it 'GET request of all orders' do
    woocommerceApi.get('/orders')
    expect(woocommerceApi.code).to eq(200)
    expect(woocommerceApi.message).to eq('OK')
  end

  it 'POST request to create new order' do
    woocommerceApi.post('/orders', payload)
    expect(woocommerceApi.code).to eq(201)
    expect(woocommerceApi.message).to eq('Created')
    expect(woocommerceApi.body['billing']['first_name']).to eq(payload['billing']['first_name'])
    orderId = woocommerceApi.body['id']
  end

  it 'GET request of a single order by id' do
    woocommerceApi.get("/orders/#{orderId}")
    expect(woocommerceApi.code).to eq(200)
    expect(woocommerceApi.body["id"]).to eq(orderId)
  end

  it 'DELETE request of a single existing order by id' do
    woocommerceApi.delete("/orders/#{orderId}")
    expect(woocommerceApi.code).to eq(200)
    expect(woocommerceApi.body["id"]).to eq(orderId)
  end
end