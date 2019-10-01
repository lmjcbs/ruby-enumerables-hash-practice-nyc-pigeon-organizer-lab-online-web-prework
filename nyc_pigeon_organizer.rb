def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |key, value|
    pigeon_data_key = key
    value.each do |key, value|
      pigeon_data_value = key
      value.each do |pigeon_name|
        if !pigeon_list.has_key?(pigeon_name)
          pigeon_list[pigeon_name] = Hash.new
        end
        if !pigeon_list[pigeon_name].has_key?(pigeon_data_key)
          pigeon_list[pigeon_name][pigeon_data_key] = Array.new
        end
          pigeon_list[pigeon_name][pigeon_data_key] << pigeon_data_value.to_s
      end
    end
  end
  pigeon_list
end
