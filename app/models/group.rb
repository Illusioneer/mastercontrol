class Group
  include Mongoid::Document
  
  field :groupname, :type => String
  field :groupemail, :type => String
  field :groupmembers, :type => Array
  
end
