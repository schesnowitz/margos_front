class PlayVideoJob4 < ApplicationJob
  
  queue_as :default

  scheduler = Rufus::Scheduler.new
  scheduler.every '6m' do
puts "this is 4"
  def perform(*args)

    # Capybara.default_driver = :selenium_chrome_headless
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.youtube.com/watch?v=X-kaplfu3mc')

    sleep 350
    session.execute_script "window.close();"
    # session.driver.click(420, 540) 

    # sleep 3

    # puts session.driver.network_traffic
    # session.find_button("Subscribe", visible: false).trigger('click')
    # sleep 3
    # session.save_screenshot('video4.png', full: true)   

    # puts session.current_url
    end
  end
end

# ArgumentError: invalid keys :visable, should be one of :count, :minimum, :maximum, :between, :text, :id, :class, :visible, :exact, :exact_text, :match, :wait, :filter_set, :disabled, :value, :title, :type


   
# :rack_test, :selenium, :selenium_chrome, :selenium_chrome_headless, :poltergeist