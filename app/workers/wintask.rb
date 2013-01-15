class Wintask
  include Sidekiq::Worker
  
  def perform(your_email)
    wasGood = system("/etc/vpnc/vpn2.sh")
    UserMailer.task_email(your_email).deliver
  end
end