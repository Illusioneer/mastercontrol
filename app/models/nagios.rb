class Nagios
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :timestamp,  :type => Integer
  field  :nagiosdata, :type =>  Hash

  def self.service_history(servicename)
    dib = Array.new
      Nagios.where(:timestamp.gte => 12.hours.ago.to_i).each do |entry|
        entry.servicestatus.each do |item|
          dib << ["Date(#{item['last_update'].to_i})", item['check_latency'].to_f] unless item['host_name'] != servicename
        end
      end
      javastring = "["
      dib.each do |entry|
        javastring = javastring + "[#{entry[0]}, #{entry[1]}],"
      end
      javastring = javastring[0...-1]
      javastring = javastring + "]"
    return javastring
  end

  def self.lastcheck(servicename,hostname,statput)
    pluginoutput = ""
    Nagios.last.servicestatus.each do |entry|
      pluginoutput =  entry[statput] if entry['host_name'] == hostname and entry['service_description'] == servicename
    end
    return pluginoutput
  end

  def self.uptime(datestart, dateend, servicename)
    uptick = 0
    downtick = 0
    Nagios.each do |services|
        services.servicestatus.each do |service|
           service["host_name"]==servicename and service["service_description"]== "HTTP" and service["current_state"]== 0 ? uptick += 1: downtick += 1
        end
    end
    #returns ratio of uptime and downtimes
    return downtick/uptick

  end
  
end
