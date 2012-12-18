class UserMailer < ActionMailer::Base

  default from: "mastercontrol@mcp.hcpprod.com"

  def test_email(user)
    @defaulted = "Bryan.Owens@harpercollins.com"
    @user = user

    @joblist = Job.asc(:LastTaskResult).where(:NextRunTime.lt => 1.day.from_now)

    mail(:to => @defaulted, :subject => "Welcome to My Awesome Site")
  end

end
