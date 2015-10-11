require 'rails_helper'

RSpec.describe Api::ItemsController, type: :controller do
  render_views

  before { create_list(:item, 4) }

  describe 'Get #index' do
    subject(:response) { get :index, format: :json }
    let(:json) { JSON.parse(response.body) }

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should have 4 items' do
      expect(json['totalItems']).to eq 4
    end
  end

  describe 'Get #show id' do
    let(:item) { Item.first }

    subject(:response) { get :show, id: item.id, format: :json }
    let(:json) { JSON.parse(response.body) }

    it 'should return http success' do
      is_expected.to have_http_status(:success)
    end

    it 'should have correct json' do
      expect(json).to eq item.as_json(only: [:id, :name, :description, :price])
    end
  end
end
