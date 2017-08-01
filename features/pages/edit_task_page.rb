class EditTask < SitePrism::Page
	elements :side_bar_view_tasks, "//*[@id='actionMenuSidebar']/ul/li[2]/a/div[2]"
	elements :button_save, "#SAVE"

	def click_view_tasks
		find(:xpath, "//*[@id='actionMenuSidebar']/ul/li[2]/a/div[2]").click
	end

	def click_link_task(subject)
		first(:css, 'a.edit-link').click
	end

	def fill_status status
		find("option[value='#{status}']").click
	end

  def click_first(subject)
    find('.a', :text => '#{subject}').click
  end
end
