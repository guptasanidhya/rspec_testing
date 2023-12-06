require 'rails_helper'

# RSpec.describe ConsolesController do
RSpec.describe 'Consoles requests' do
    let(:json){ JSON.parse(response.body) }

    describe 'Get /consoles' do
        it "returns an array of all video game consoles" do
            get('/consoles')
            # json=JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
            'NES',
            'SNES',
            'Wii',
            'Genesis',
            'Xbox',
            'Switch',
            'PS1',
            'PS2'
            )
        end
        it "returns an array of some video game consoles" do
            get('/consoles')
            # json=JSON.parse(response.body)
            expect(json['consoles']).to include(
                'PS1',
                'PS2'
            )
        end

        it 'supports specifying consoles for a specific manufacturer' do
            get('/consoles', params: { manufacturer: 'Nintendo'})
            # json =JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Switch'
            )
        end
    end
end