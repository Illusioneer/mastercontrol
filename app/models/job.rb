class Job
  include Mongoid::Document

  field  :machine,  :type => String
  field  :Name,  :type => String
  field  :Path,  :type => String
  field  :Enabled,  :type => String
  field  :State, :type => String, :default => "none"
  field  :LastRunTime, :type => String, :default => "never"
  field  :NextRunTime, :type => String, :default => "never"
  field  :NumberOfMissedRuns, :type => String, :default => "none"

end