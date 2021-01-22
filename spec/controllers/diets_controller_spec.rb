require 'rails_helper'
require 'faker'

RSpec.describe DietsController, type: :controller do
    describe "GET /index" do
        before do
            get :index
        end
        
        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "GET /show" do
        let(:diet){create(:diet)}

        before do
            get :show, params: {id: diet.id}
        end

        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "POST /create" do
        context "with valid attributes" do
            let(:valid_attributes) do
                {
                  horario: '07:00',
                  descricao: Faker::Name.name,
                  meal_id: Faker::Number.between(from: 1, to: 5),
                  user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "creates a new diet" do
                expect {
                    post :create, params: {diet: valid_attributes}
                }.to change(Diet, :count).by(0)
            end
        end

        context "with invalid attributes" do
            let(:invalid_attributes) do
                {
                  horario: '07:00',
                  descricao: Faker::Name.name,
                  meal_id: Faker::Number.between(from: 1, to: 5),
                  user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "does not create a new diet" do
                expect {
                    post :create, params: {diet: invalid_attributes}
                }.not_to change(Diet, :count)
            end
        end
    end
    
    describe "PUT /update" do
        let(:diet) { create(:diet) }

        context "when successful" do
            let(:diet_attributes) { attributes_for(:diet) }

            before do
                put :update, params: { id: diet.id, diet: diet_attributes }
            end

            it "returns a redirect response" do
                expect(response).to be_successful
            end
        end

        context "when not successful" do
            let(:diet_attributes) { attributes_for(:diet, name: "") }

            it "does not update the diet" do
                expect {
                    put :update, params: { id: diet.id, diet: diet_attributes }
                }.not_to change { diet.reload }
            end
        end
    end

    describe "DELETE /destroy" do
        let!(:diet) { create(:diet) }
    
        it "deletes a diet" do
            expect {
                delete :destroy, params: { id: diet.id }
            }.to change {
                Diet.count
            }.by(-1)
        end

        it "returns a successful response" do
            delete :destroy, params: { id: diet.id }
            expect(response).to be_successful
        end
    end
end
