require 'rails_helper'

describe "Editing a post" do

  it "updates the post and shows the post's updated details" do
    post = post.create(post_attributes)

    visit post_url(post)

    click_link 'Edit'

    expect(current_path).to eq(edit_post_path(post))

    expect(find_field('Title').value).to eq(post.title)

    fill_in 'Name', with: "Updated post Name"

    click_button 'Update post'

    expect(current_path).to eq(post_path(post))

    expect(page).to have_text('Updated post Name')
  end

end