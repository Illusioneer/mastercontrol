class Sweep
  include Mongoid::Document

  field  :item,  :type => String
  field  :data,  :type => Array
  field  :stamp, :type => Date, :default => Time.now


  embedded_in :instance, :inverse_of => :sweeps
end
