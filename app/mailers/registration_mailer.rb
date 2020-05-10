# encoding: utf-8
class RegistrationMailer < ActionMailer::Base
  default from: "info@tcdulliken.ch"

  def confirmation_email(registration)
    @registration = registration
    mail(:to => registration.email, :subject => 'Anmeldungsbestätigung ' + registration.tournament.title)
  end
end
