Quando(/^pesquisar pela task "([^"]*)"$/) do |subject|
  @edit_task_page = EditTask.new
  @navigation_helper_page = NavigationHelperPage.new

  @navigation_helper_page.select_action("create")
  @edit_task_page.click_view_tasks
  @edit_task_page.click_link_task subject
end

Então(/^será apresentada a tela de edição$/) do
  page.has_content?('TASK OVERVIEW')
end

Então(/^irei alterar o status "([^"]*)"$/) do |status|
  @edit_task_page.fill_status status
end

Então(/^salvar$/) do
  first('#SAVE').click
end
