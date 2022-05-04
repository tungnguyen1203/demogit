class SetupCapybara
  DOWNLOAD_PATH = './tmp/chromedriver'
  
  def self.call
    Capybara.register_driver :chrome do |app|
      driver = Capybara::Selenium::Driver.new(app, { browser: :chrome })
      headless_download_setup(driver)
    end
    Capybara.run_server = false
    Capybara.current_driver = :chrome
    Capybara.javascript_driver = :chrome
    Capybara.default_max_wait_time = 5
  end

  def self.headless_download_setup(driver)
    bridge = driver.browser.send(:bridge)

    path = '/session/:session_id/chromium/send_command'
    path[':session_id'] = bridge.session_id

    bridge.http.call(:post, path, cmd: 'Page.setDownloadBehavior',
                     params: {
                       behavior: 'allow',
                       downloadPath: DOWNLOAD_PATH
                     })

    driver
  end
end

SetupCapybara.call
