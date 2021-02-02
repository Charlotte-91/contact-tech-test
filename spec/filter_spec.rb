require 'filter.rb'

    describe 'filter' do

        it 'filters by location: Springfield' do
            json = JSON.parse(File.read('talent.JSON'))
            location = "Springfield"
            expect { filter(json, location) }.to output(/Homer Simpson/).to_stdout
            expect { filter(json, location) }.to output(/Krusty the Clown/).to_stdout
            expect { filter(json, location) }.to_not output(/Frank Reynolds/).to_stdout
        end
        
        it 'filters by location: Philidelphia' do
            json = JSON.parse(File.read('talent.JSON'))
            location = "Philidelphia"
            expect { filter(json, location) }.to output(/Frank Reynolds/).to_stdout
            expect { filter(json, location) }.to_not output(/Krusty the Clown/).to_stdout
        end
    end
