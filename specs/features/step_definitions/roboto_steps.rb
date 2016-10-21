######### DADO #########
Given(/^que estou na tela de login$/) do
  @page = page(LoginScreen).await(timeout: 5)
end

Given(/^preencho o campo "([^"]*)" com "([^"]*)"$/) do |field, text|
  @page.set_field(field, text)
end

Given(/^que realizei o login com o usuário "([^"]*)" e senha "([^"]*)"$/) do |user, password|

  user_field = "User"
  password_field = "Senha"

  steps %(
    E que estou na tela de login
    E preencho o campo "#{user_field}" com "#{user}"
    E preencho o campo "#{password_field}" com "#{password}"
    E tocar no botão de login
    )

end

Given(/^que estou na Home$/) do
  @page = page(HomeScreen).await(timeout: 5)
end

######### QUANDO #########
When(/^tocar no botão de login$/) do
  @page.touch_login_button
end

When(/^tocar no botão Sair$/) do
  @page.touch_logoff_button
end


######### ENTãO #########
Then(/^devo ver a tela de "([^"]*)"$/) do |screen|
  if screen == "Home"
    @page = page(HomeScreen).await(timeout: 5)
  end
end

Then(/^devo ver a mensagem de boas vindas "([^"]*)"$/) do |message|
  @page.has_message? message
end

Then(/^devo ver a tela de login$/) do
  @page = page(LoginScreen).await(timeout: 5)
end