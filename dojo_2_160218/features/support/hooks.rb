require 'watir'

Before do |scenario|
  #Capybara.reset_sessions!
  DataMagic.load_for_scenario(scenario)
  #@browser = Watir::Browser.new :chrome
end


After do
  #@browser.close
  save_screenshot('cenario_cadastro.png')
end