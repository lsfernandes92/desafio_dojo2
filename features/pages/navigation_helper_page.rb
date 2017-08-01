class NavigationHelperPage < SitePrism::Page
	element :menu_create, "#quickcreatetop"
	element :menu_create_task, "li.last"

	def select_action(opcao)
    case opcao
    when "create"
      menu_create.click
			menu_create_task.click
    end
	end
end
