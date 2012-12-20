class User
  include Mongoid::Document
  
  validates_presence_of :userpass, :on => :create  
  
  field :userid, :type => String
  field :useremail, :type => String
  field :userpass, :type => String
  field :usergroups, :type => Array
end
