require 'rails_helper'
require 'faker'

RSpec.describe InfosController, type: :controller do
    describe "GET /index" do
        before do
            get :index
        end
        
        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "GET /show" do
        let(:info){create(:info)}

        before do
            get :show, params: {id: info.id}
        end

        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

    describe "POST /create" do
        context "with valid attributes" do
            let(:valid_attributes) do
                {
                data_inicio: Faker::Date.between(from: '2020-10-01', to: '2021-01-22'),
                data_fim: Faker::Date.between(from: '2021-01-23', to: '2022-01-22'),
                peso: Faker::Number.between(from: 100, to: 150),
                peso_ideal: Faker::Number.between(from: 70, to: 10),
                altura: Faker::Number.between(from: 150, to: 200),
                user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "creates a new info" do
                expect {
                    post :create, params: {info: valid_attributes}
                }.to change(Info, :count).by(0)
            end
        end

        context "with invalid attributes" do
            let(:invalid_attributes) do
                {
                data_inicio: Faker::Date.between(from: '2020-10-01', to: '2021-01-22'),
                data_fim: Faker::Date.between(from: '2021-01-23', to: '2022-01-22'),
                peso: Faker::Number.between(from: 100, to: 150),
                peso_ideal: Faker::Number.between(from: 70, to: 10),
                altura: Faker::Number.between(from: 150, to: 200),
                user_id: Faker::Number.between(from: 1, to: 1)
                }
            end

            it "does not create a new info" do
                expect {
                    post :create, params: {info: invalid_attributes}
                }.not_to change(Info, :count)
            end
        end
    end

    describe "PUT /update" do
        let(:info) { create(:info) }

        context "when successful" do
            let(:info_attributes) { attributes_for(:info) }

            before do
                put :update, params: { id: info.id, info: info_attributes }
            end

            it "returns a redirect response" do
                expect(response).to be_successful
            end
        end

        context "when not successful" do
            let(:info_attributes) { attributes_for(:info, name: "") }

            it "does not update the info" do
                expect {
                    put :update, params: { id: info.id, info: info_attributes }
                }.not_to change { info.reload }
            end
        end
    end

    describe "DELETE /destroy" do
        let!(:info) { create(:info) }
    
        it "deletes a info" do
            expect {
                delete :destroy, params: { id: info.id }
            }.to change {
                Info.count
            }.by(-1)
        end

        it "returns a successful response" do
            delete :destroy, params: { id: info.id }
            expect(response).to be_successful
        end
    end
end
