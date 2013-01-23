class Instance
  include Mongoid::Document

  field :name, :type => String, :default => "Untitled"
  field :canonical, :type => String, :default => "Untitled"
  field :main_ip, :type => String
  field :other_ip, :type => Array
  field :location, :type => String
  field :provider, :type => String
  field :owners, :type => Array
  field :groups, :type => Array
  field :accounts, :type => Array
  field :access_type, :type => String
  field :ssh_keys, :type => Array
  field :tags, :type => Array
  field :os_type, :type => String
  field :os_version, :type => String
  field :disks, :type => Array
  field :ram, :type => String
  field :description, :type => String

  embeds_many :sweeps
  embeds_many :services
end