require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      author: "MyString",
      year_published: 1,
      number_of_pages: 1,
      rating: 1
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[year_published]"

      assert_select "input[name=?]", "book[number_of_pages]"

      assert_select "input[name=?]", "book[rating]"
    end
  end
end
