Então(/^navegarei atá a tela de tasks$/) do
  @edit_task_page = EditTask.new
  @navigation_helper_page = NavigationHelperPage.new
  @delete_task_page = DeleteTask.new

  @navigation_helper_page.select_action("create")
  @edit_task_page.click_view_tasks
  @delete_task_page.click_task
end

Então(/^irei deletar a task$/) do
  @delete_task_page.click_tab_action_delete
end

Então(/^confirmar deleçãos$/) do
  page.driver.browser.switch_to.alert.accept
end

Então(/^será apresentada a tela de tasks$/) do
  page.has_content?('TASKS')
end
