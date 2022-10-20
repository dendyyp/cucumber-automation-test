 Given ("I visit {string}") do |string|
    visit string
    sleep 3
  end
  
  When('I click Sign In') do
    click_on "Login Ke Portal", wait: 15
    expect(find('div.text-block').text).to eql("Selamat datang di Portal Usaha Youtap")
    sleep 5
  end
  
  When(/^I fill "([^"]*)" phone number/) do |number|
    case number
    when 'correct'
      expect(find(:xpath, "//*[@id='inputEmail']").set('085719369696'))
    when 'incorrect'
      expect(find(:xpath, "//*[@id='inputEmail']").set('085719aaaa1111'))
    end
  end

  When(/^I fill "([^"]*)" password/) do |passw|
  case passw
    when 'valid'
    expect(find(:xpath, "//*[@id='inputPassword']").set('Percobaan123#'))
    when 'wrong'
    expect(find(:xpath, "//*[@id='inputPassword']").set('Percosdsddsd123#'))
    end
  end

  And('I click login button') do
    expect(find(:xpath, "//*[@id='inputPassword']").set('Percobaan123#'))
    find("button[type='Submit']").click
  end

  Then('redirect to youtap dashboard') do
    expect(page).to(have_content('Ringkasan Penjualan'), wait: 10)
  end

  And(/^login has been "([^"]*)/) do |state|
  case state
    when 'success'
    expect(page).to(have_content('Grafik Penjualan'), wait: 10)
    when 'unsuccessful'
    expect(page).to(have_content('Username atau Password tidak sesuai'), wait: 10, visible: true)
    end   
  end

  