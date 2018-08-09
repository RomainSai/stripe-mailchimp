class ContactMailer < ApplicationMailer

  def contact

    mail(to: 'contact@test.fr', subject: 'sujet de test')
  end

end
