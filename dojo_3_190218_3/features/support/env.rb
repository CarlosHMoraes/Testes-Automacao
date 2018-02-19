require 'rspec'
require 'page-object'
require 'data_magic'
require 'httparty'
require 'rspec'
require 'pry-nav'
require 'pry'

World(PageObject::PageFactory)

ENV['ENV'] = 'teste' unless ENV.key? 'ENV'

MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]