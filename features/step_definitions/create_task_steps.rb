Dado(/^que esteja logado no sistema$/) do
  @login_page = LoginPage.new
  @navigation_helper_page = NavigationHelperPage.new
  @create_task_page = CreateTask.new

  @login_page.load
  @login_page.login 'will', 'will'
end

Quando(/^clicar no menu Create task$/) do
  @navigation_helper_page.select_action("create")
end

Quando(/^preencher "([^"]*)", "([^"]*)", "([^"]*)"$/) do |subject, status, priority|
  @create_task_page.create_task subject, status, priority
end

Então(/^sera apresentada tela de task overview$/) do
  page.has_content?('TASK OVERVIEW')
end
