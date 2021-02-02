def filter(json,location)
    name_list = []
    json.each_with_index do |person|
       person.each do | key, value |
            if value.downcase == location.downcase
                name_list.push(person.fetch('name'))
            end
        end
    end
    puts name_list
end
