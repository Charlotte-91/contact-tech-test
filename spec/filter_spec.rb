require 'filter.rb'

    describe 'filter' do

        it 'filters by location: springfield' do
            json = JSON.parse(File.read('talent.JSON'))
            location = "Springfield"
            expect(filter(json, location)).to include('Homer Simpson')
            expect(filter(json, location)).to include('Krusty the Clownn')
        end
        
        it 'filters by location: Philidelphia' do
            json = JSON.parse(File.read('talent.JSON'))
            location = "Philidelphia"
            expect(filter(json, location)).not_to include('Homer Simpson')
            expect(filter(json, location)).not_to include('Krusty the Clown')
        end
    end
