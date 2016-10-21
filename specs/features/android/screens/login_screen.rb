class LoginScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait) { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name) { 'rootview_login' }
  element(:username) { 'name' }
  element(:password) { 'password' }
  element(:login_button) { 'login_button' }

  # element(:button)              { pending 'Insert button identificator' }

  # Declare todas as acoes da tela
  action(:touch_login_button) do
    touch("* id:'#{login_button}'")
  end

  def set_field(field, text)
    enter_text("* marked:'#{field}'", text)
  end

  def enter_username user
    enter_text("* id:'#{username}'", user)
  end

  def enter_password passw
    enter_text("* id:'#{password}'", passw)
  end
end
