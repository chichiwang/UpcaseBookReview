module BookHelpers
  def create_book(opts = {})
    FactoryGirl.create(:book, opts)
  end
end