class UserMailer < ActionMailer::Base

  default from: "mastercontrol@mcp.hcpprod.com"

  def test_email(user)
    @defaulted = "Bryan.Owens@harpercollins.com"
    @user = user
    mail(:to => @defaulted, :subject => "Welcome to My Awesome Site")
  end

end
