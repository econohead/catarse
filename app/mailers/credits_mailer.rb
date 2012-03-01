class CreditsMailer < ActionMailer::Base
  include ERB::Util
  default :from => "RoundSeed <matjohnson@gmail.com>"

  def request_refund_from(backer)
    @backer = backer
    @user = backer.user
    mail(:to => 'mat@fogventures.com', :subject => I18n.t('credits_mailer.request_refund_from.subject', :name => @user.name))
  end
end
