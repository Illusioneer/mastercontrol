class Programstatus
  include Mongoid::Document
  #field
  #field
  embedded_in :nagios, :inverse_of => :programstatuses
end