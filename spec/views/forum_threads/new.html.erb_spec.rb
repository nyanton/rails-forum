require 'rails_helper'

RSpec.describe "forum_threads/new", type: :view do
  before(:each) do
    assign(:forum_thread, ForumThread.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new forum_thread form" do
    render

    assert_select "form[action=?][method=?]", forum_threads_path, "post" do

      assert_select "input[name=?]", "forum_thread[title]"

      assert_select "input[name=?]", "forum_thread[description]"
    end
  end
end
