require "rails_helper"

RSpec.describe "StaticPages", type: :request do
  %w[blogs cv projects resume welcome].each do |path|
    describe "GET /#{path}" do
      it "succeeds" do
        get "/#{path}"

        expect(response).to have_http_status(:ok)
      end
    end
  end
end
