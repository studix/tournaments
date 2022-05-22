# encoding: utf-8
class RegistrationMailer < ActionMailer::Base
  default from: "clubtournaments@gmx.net"

  def confirmation_email(registration)
    @registration = registration
    if(registration.tournament.sender_email.nil?)
      mail(:to => registration.email, :subject => 'Anmeldungsbestätigung ' + registration.tournament.title)
    else
      mail(:from => registration.tournament.sender_email, :to => registration.email, :subject => 'Anmeldungsbestätigung ' + registration.tournament.title)
    end
  end
end
