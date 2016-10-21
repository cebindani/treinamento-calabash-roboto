class HomeScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait) { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name) { 'rootview_home' }
  element(:logoff_button) {'logoff_button'}
  # element(:button)              { pending 'Insert button identificator' }

  # Declare todas as acoes da tela
  action(:touch_logoff_button) do
    touch("* id:'#{logoff_button}'")
  end


  def has_message? message
    begin
      wait_for_text(message, timeout: 5)
    rescue
      raise "Mensagem não encontrada!"
    end
  end
end
