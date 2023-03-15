require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'
require 'sinatra'

require_relative 'spec_helper/spec_rest'

 # Não é mais ultilizado esse tipo de metodo a baixo para ultilizar ambientes chamados de outra pasta
 #CONFIG YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")


World(REST,FactoryBot::Syntax::Methods)