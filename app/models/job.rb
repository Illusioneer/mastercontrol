class Job
  include Mongoid::Document

  field  :machine,  :type => String
  field  :job,  :type => String
  field  :status, :type => String, :default => "none"
  field  :last_run, :type => Date,  :default => Time.now

end