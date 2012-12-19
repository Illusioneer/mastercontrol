class Job
  include Mongoid::Document

  #field  :machine,  :type => String
  field  :Name,  :type => String
  field  :Path,  :type => String
  field  :Enabled,  :type => String
  field  :State, :type => String, :default => "none"
  field  :LastRunTime, :type => DateTime, :default => Time.now
  field  :NextRunTime, :type => DateTime, :default => Time.now
  field  :NumberOfMissedRuns, :type => Integer, :default => 0
  field  :LastTaskResult, :type => Integer, :default => 0
  field  :Definition, :type => String, :default => "none"

end