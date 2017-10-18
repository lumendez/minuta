class RegistroMailer < ApplicationMailer

  default from: "minutassepiesime@ipn.mx"

  def correo_registro(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenido al sistema de minutas')

  end
end
