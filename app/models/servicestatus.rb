class Servicestatus
  include Mongoid::Document
  #field
  #field
  embedded_in :nagios, :inverse_of => :servicestatuses
end