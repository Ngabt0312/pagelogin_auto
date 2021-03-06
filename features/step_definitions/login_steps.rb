Given('navigate to login page successfully') do
    $driver.get('http://the-internet.herokuapp.com/login')
    $driver.manage.window.resize_to(1130, 706)    
end
  
When('input {string} and {string}') do |string, string2|
    $driver.find_element(:id, 'username').send_keys(string)
    #$driver.manage.timeouts.implicit_wait = 5
    $driver.find_element(:id, 'password').send_keys(string2)
    $driver.find_element(:css, '.fa').click
end
  
Then('message display {string}') do |string|
    expect($driver.find_element(:id, 'flash').text).to include(string)
end
