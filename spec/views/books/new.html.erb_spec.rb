require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      title: "MyString",
      author: "MyString",
      year_published: 1,
      number_of_pages: 1,
      rating: 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[year_published]"

      assert_select "input[name=?]", "book[number_of_pages]"

      assert_select "input[name=?]", "book[rating]"
    end
  end
end
