require 'rails_helper'

RSpec.describe 'Users', type: :request do
    describe 'GET /index' do
        before do
            FactoryBot.create(:user)
            get '/users'
        end

        it "return all users" do
            expect(json.size).to eq(1)
        end

        it 'returns status code 200' do
            expect(response).to have_http_status(:ok)
          end
    end
end