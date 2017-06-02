require 'rails_helper'

RSpec.describe "forum_threads/index", type: :view do
  before(:each) do
    assign(:forum_threads, [
      ForumThread.create!(
        :title => "Title",
        :description => "Description"
      ),
      ForumThread.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of forum_threads" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
