class Job
  include Mongoid::Document

  field  :machine,  :type => String
  field  :job,  :type => String
  field  :status, :type => String, :default => "none"
  field  :last_run, :type => Date,  :default => Time.now
  field  :caption
  field  :command
  field  :description
  field  :elapsedTime
  field  :jobStatus
  field  :name
  field  :owner
  field  :priority
  field  :runRepeatedly
  field  :startTime
  field  :status

end