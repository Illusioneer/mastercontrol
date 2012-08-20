class Instance
  include Mongoid::Document

  field :name, :type => String, :default => "Untitled"
  field :main_ip, :type => String
  field :description, :type => String

  embeds_many :sweeps
end
