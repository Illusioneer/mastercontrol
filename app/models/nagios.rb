class Nagios
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :timestamp,  :type => Integer
  field  :nagiosdata, :type =>  Hash

end