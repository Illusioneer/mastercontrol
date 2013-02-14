class Servicestatus
  include Mongoid::Document

  field :host_name, :type => String
  field :service_description, :type => Integer
  field :check_command, :type => String
  field :check_execution_time, :type => String
  field :check_latency, :type => String
  field :check_type, :type => Integer
  field :current_state, :type => Integer
  field :current_event_id, :type => Integer
  field :state_type, :type => Integer
  field :plugin_output, :type => String

  
  embedded_in :nagios, :inverse_of => :servicestatuses
end