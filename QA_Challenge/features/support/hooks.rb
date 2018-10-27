Before('@home_page') do    
    visit '/'
end

After('@logout') do
    click_link 'Log me out'
end