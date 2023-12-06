require 'rails_helper'

# RSpec.describe ConsolesController do
RSpec.describe 'Consoles requests' do
    describe 'Get /consoles' do
        it "returns an array of some video game consoles" do
            get('/consoles')
            json=JSON.parse(response.body)
            expect(json['consoles']).to include(
                'Genesis',
                'Xbox',
                'Switch',
                'PS1',
                'PS2'
            )
        end
    end
end