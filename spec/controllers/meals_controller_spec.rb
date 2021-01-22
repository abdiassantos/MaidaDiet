require 'rails_helper'
require 'faker'

RSpec.describe MealsController, type: :controller do
    describe "GET /index" do
        before do
            get :index
        end
        
        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "GET /show" do
        let(:meal){create(:meal)}

        before do
            get :show, params: {id: meal.id}
        end

        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "POST /create" do
        context "with valid attributes" do
            let(:valid_attributes) do
                {
                descricao: Faker::Name.name
                }
            end

            it "creates a new meal" do
                expect {
                    post :create, params: {meal: valid_attributes}
                }.to change(Meal, :count).by(0)
            end
        end

        context "with invalid attributes" do
            let(:invalid_attributes) do
                {
                descricao: Faker::Name.name
                }
            end

            it "does not create a new meal" do
                expect {
                    post :create, params: {meal: invalid_attributes}
                }.not_to change(Meal, :count)
            end
        end
    end
end
