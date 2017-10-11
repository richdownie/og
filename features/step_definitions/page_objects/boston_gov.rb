class BostonGov
  include PageObject
  
  def search(value)
    @browser.first(class: 'search').send_keys(value)
    @browser.first(class: 'icon-search').click
  end
end