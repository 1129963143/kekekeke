require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  describe "GET #we" do
    it "returns http success" do
      get :we
      expect(response).to have_http_status(:success)
    end
  end

end
