require 'json'
require 'pry'
# Requires two command-line arguments:
#  The first argument should point to the fsh-generated/resources directory output by sushi
#  The second argument should indicate the output directory where the resulting JSON file will be saved
coding_profiles = [
       "StructureDefinition-VRM-MessageParameters.json",
       "StructureDefinition-VRM-VoidParameters.json",
       "StructureDefinition-VRM-StatusParameters.json",
       "StructureDefinition-VRM-AliasParameters.json"
    ]
variables = {}
outfile = File.open(ARGV[1] + "/parameters.json","w")
coding_profiles.each{ |filename|
    profile = JSON.parse(File.read(ARGV[0]+"/"+filename))
    elements = profile["differential"]["element"]
    elements_hash = Hash[elements.map{ |e| [e["id"], e] }]
    slices = elements.select{|element| element["sliceName"] }
    slices.each { |slice|
        id = slice["id"]
        value = elements_hash[id + ".value[x]"]
        if value == nil
            # climb the tree a bit and look for value[x]
            # binding.pry
            index = id.rindex(/:/)
            parent = id[0, index]
            value = elements_hash[parent + ".value[x]"]
            next if value == nil # slice is just a container for parts, and there are NO constrains on the value of the parts at the slice level
        end
        # puts id + ":" +  value["id"]
        next if value["max"] == "0" # slice is just a container for parts and there IS a constraint on the value of the parts at the slice level
        #binding.pry
        type = value["type"][0]["code"]
        #binding.pry
        idcomponents = id.split(":")
        numcomponents = idcomponents.length
        variable = idcomponents[numcomponents-1]
        if numcomponents == 3
            s = idcomponents[1].split(".")[0]
            #binding.pry
            # puts "#{variable} : parameter[#{s} ].part[#{variable}]"
            variables[variable] = {"slice" => s, "part" => variable, "type" => type }
        else
            # puts "#{variable} : parameter[  #{idcomponents[1]}]"
            variables[variable] = {"slice" => variable, "type" => type}

        end
    }
}
outfile.write( JSON.pretty_generate(variables))
