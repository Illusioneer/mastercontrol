class Hoststatus
  include Mongoid::Document
  #field
  #field
  embedded_in :nagios, :inverse_of => :hoststatuses
end