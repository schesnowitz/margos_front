class PlayVideoJob < ApplicationJob
  # Capybara.default_driver = :selenium_chrome
  queue_as :default
  # require 'capybara/poltergeist'
  
  def perform(*args)
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, {js_errors: false})
    end
    video1 = Capybara::Session.new(:poltergeist)
    video1.visit('http://traxxtransport.com/videos/1') 

    sleep 10
    vid1.save_screenshot('video1.png', full: true)   


    # @video2 = Video.find(2)
    # vid2 = Capybara::Session.new(:poltergeist)
    # # video1.visit('http://167.99.183.16/videos/2')
    # vid2.visit(@video2.url) 
    # # puts session.document.title
    # sleep 10
    # vid2.save_screenshot('video2.png', full: true)   
  end
end


   
