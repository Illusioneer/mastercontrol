class Wincheck
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :timestamp,  :type => DateTime, :default => Time.now
  field  :wincheck, :type =>  Hash
  
end
