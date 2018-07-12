class ApplicationJob < ActiveJob::Base
  require 'capybara/poltergeist'
  require 'rufus-scheduler'
end
  