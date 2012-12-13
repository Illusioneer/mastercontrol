class UserMailer < ActionMailer::Base

  default from: "mastercontrol@mcp.hcpprod.com"

  def test_email(user)
    @user = user
    @url  = "http://mcp.hcpprod.com:3000/testmail"
    mail(:to => "Bryan.Owens@harpercollins.com", :subject => "Welcome to My Awesome Site")
  end

end
