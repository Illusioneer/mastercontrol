class Servicestatus < ActiveRecord::Base
  attr_accessible :current_event_id, :current_state, :host_name, :nagiostimeid, :service_description, :servicedata
end
