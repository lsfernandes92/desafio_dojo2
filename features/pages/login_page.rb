class LoginPage < SitePrism::Page
	set_url "https://demo.suiteondemand.com/index.php?action=Login&module=Users"
	element :username, "#user_name"
	element :password, "#user_password"
  element :bt_logar, "#bigbutton"

	def login(usuario, senha)
		username.set(usuario)
		password.set(senha)
		bt_logar.click
	end
end
