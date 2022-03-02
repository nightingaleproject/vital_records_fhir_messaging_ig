require 'json'
require 'pry'
# ARGV should point to the fsh-generated/resources directory of the Vital_Records_FHIR_Messaging_IG
skips =
    [  "entity_axis_code",
        "record_cause_of_death"
    ]

parameter_file = File.read(ARGV[0])
parameters = JSON.parse(parameter_file)
puts "
using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using Hl7.Fhir.ElementModel;
using Hl7.Fhir.Model;
using Hl7.Fhir.Serialization;

namespace VRDR
{
    /// <summary>Class <c>BaseMessage</c> is the base class of all messages.</summary>
    public partial class BaseMessage
    {
"
parameters.each { | variable, sliceinfo |
    case sliceinfo["type"]
        when "string"
            typeName = "String"
            type = "string"
            description = "string "
        when "unsignedInt"
            typeName = "UnsignedInt"
            type = "uint?"
            description = "uint "
        when "Coding"
            typeName = "Coding"
            type = "Dictionary<string, string>"
            description = "Coded value in Dictionary "
        else
            puts "uknown type" + " " + sliceinfo["type"]
            type = sliceinfo["type"]
    end
    slice = sliceinfo["slice"]
    part = sliceinfo["part"]
    path = "\"" + slice + "\""
    path = path + ", \"" + part + "\"" if part
    next if skips.member?(variable) || skips.member?(slice)  # these are special cases with manually written accessors
    puts "    /// <summary>#{variable}</summary>
    /// <value>#{description}</value>"
    puts "    public #{type} #{variable}
    {
      get
      {
          return GetParameter#{typeName}( #{path});
      }
      set
      {
            SetParameter#{typeName}(value, #{path});
      }
    }"
    }
puts "  }
}"
