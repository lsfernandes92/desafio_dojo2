class DeleteTask < SitePrism::Page
	element :menu_tab_action, "#tab-actions"
  element :delete_opt, "#delete_button"

  def click_tab_action_delete
    menu_tab_action.click
    delete_opt.click
  end

	def click_task
    find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[4]/b/a").click
	end
end
