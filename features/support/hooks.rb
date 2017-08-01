evidence_path = "/Users/inmetrics/Documents/tests/Dojo-master/Evidence"
unless Dir.exist?(evidence_path)
    Dir.mkdir(evidence_path,0777)
    puts "=========Diretorio criado #{evidence_path}"
else
    puts "=========Diretorio existente #{evidence_path}"
end

After do |scenario|
  result = "PASSED - "
  if(scenario.failed?)
    result = "FAIL - "
  end

  name_of_scenario = scenario.name.gsub(/\s+/, "_").gsub("/","_")
  file_path = File.expand_path(evidence_path) + '/' + result + name_of_scenario + '.png'
  page.driver.browser.save_screenshot file_path
  puts "\n#===========================================================#"
  puts "\nCenário: #{result} #{scenario.name}"
  puts "\n#===========================================================#"
end
