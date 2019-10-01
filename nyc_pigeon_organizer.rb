require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  #iterate over pigeon data key value pairs
  data.each do |key, value|
    #info: each first level key becomes the key for the nested hash in new pigeon_list
    #store this value in a variable (A),
    pigeon_data_key = key
    #for each of those key|value pairs, iterate on the value to go to the next nested level
    value.each do |key, value|
      #info: each second level key becomes the value for the nested hash in new pigeon list
      #store this value in a variable (B)
      pigeon_data_value = key
      #info: each second level value becomes the top level key (name) for the pigeon in new pigeon list
      #this is an array of names that needs to be iterated over
      value.each do |pigeon_name|
        #for each name in array, check to see if the pigeon with that name already exists in new pigeon list
        if !pigeon_list.has_key?(pigeon_name)
          #if no create new key in pigeon list hash for the name of the pigeon
          pigeon_list[pigeon_name] = Hash.new
        end
        if !pigeon_list[pigeon_name].has_key?(pigeon_data_key)
          pigeon_list[pigeon_name][pigeon_data_key] = Array.new
        end
            #if yes add previously stored key (variable A) | value (variable B) pair directly to the correct pigeon in new pigeon list
          pigeon_list[pigeon_name][pigeon_data_key] << pigeon_data_value.to_s
      end
    end
  end
  p pigeon_list
  pigeon_list
end
