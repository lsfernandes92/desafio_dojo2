class CreateTask < SitePrism::Page
	element :input_subject, "#name"
	element :dropdown_status, "#status"
	element :priority, "#priority"
	elements :button_save, "#SAVE"

	def create_task(subject, status, priority)
		fill_subject subject
		fill_status status
		fill_priority priority
		click_save
	end

	def fill_subject subject
		input_subject.set subject
	end

	def fill_status status
		find("option[value='#{status}']").click
	end

	def fill_priority priority
		find("option[value='#{priority}']").click
	end

	def click_save
		first('#SAVE').click
	end
end
