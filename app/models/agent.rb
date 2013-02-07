class Agent < ActiveRecord::Base
  establish_connection DB2_CONF
  attr_accessible :content, :name

end