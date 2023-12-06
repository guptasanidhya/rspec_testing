require 'rails_helper'


"""Using a string like 'Status requests' as the description in describe is a common practice and is generally acceptable. It's a free-form description that you provide to make your test suite more readable and expressive.

However, some teams and projects prefer a more structured approach to organizing their tests. Instead of using a plain string, they might use nested describe blocks to create a hierarchy of descriptions that mirror the structure of the code being tested. """
# RSpec.describe 'Status requests' do
RSpec.describe StatusController do
  describe 'GET /status' do
    it 'returns a status message' do
      get '/status'
      # json=JSON.parse(response.body)
      expect(response_json['status']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end