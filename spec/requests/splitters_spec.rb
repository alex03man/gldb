require 'rails_helper'

RSpec.describe "Splitters", type: :request do
  describe "GET /splitters" do
    it "works! (now write some real specs)" do
      get splitters_path
      expect(response).to have_http_status(200)
    end
  end
end
