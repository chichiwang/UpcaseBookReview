module BookHelpers
  def create_book(title = "Title")
    FactoryGirl.create(:book, title: title)
  end
end