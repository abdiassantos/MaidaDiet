require 'rails_helper'
require 'faker'

RSpec.describe WeightsController, type: :controller do
    describe "GET /index" do
        before do
            get :index
        end
        
        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "GET /show" do
        let(:weight){create(:weight)}

        before do
            get :show, params: {id: weight.id}
        end

        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "POST /create" do
        context "with valid attributes" do
            let(:valid_attributes) do
                {
                peso_atual: Faker::Number.between(from: 70, to: 150),
                user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "creates a new weight" do
                expect {
                    post :create, params: {weight: valid_attributes}
                }.to change(Weight, :count).by(0)
            end
        end

        context "with invalid attributes" do
            let(:invalid_attributes) do
                {
                peso_atual: Faker::Number.between(from: 70, to: 150),
                user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "does not create a new weight" do
                expect {
                    post :create, params: {weight: invalid_attributes}
                }.not_to change(Weight, :count)
            end
        end
    end
end
