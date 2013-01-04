class Nagios
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :timestamp,  :type => DateTime
  field  :nagiosdata, :type =>  Hash

end