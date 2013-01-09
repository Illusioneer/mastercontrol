class Nagios
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :timestamp,  :type => Integer
  field  :nagiosdata, :type =>  Hash

  def self.service_history(servicename)
      dib = Array.new
      Nagios.where(:timestamp => 12.hours.ago.to_i).each{|entry| [entry.servicestatus.each{|item| dib << [item['host_name'], item['check_latency']] unless item['host_name'] != "pub-dashboard-dev" }]}
      return dib
  end
  
end