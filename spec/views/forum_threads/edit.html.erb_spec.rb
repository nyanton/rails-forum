require 'rails_helper'

RSpec.describe "forum_threads/edit", type: :view do
  before(:each) do
    @forum_thread = assign(:forum_thread, ForumThread.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit forum_thread form" do
    render

    assert_select "form[action=?][method=?]", forum_thread_path(@forum_thread), "post" do

      assert_select "input[name=?]", "forum_thread[title]"

      assert_select "input[name=?]", "forum_thread[description]"
    end
  end
end
