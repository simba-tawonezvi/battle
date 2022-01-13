feature "hit point viewer" do
  scenario "display default hit points" do
    sign_in_and_play
    expect(page).to have_content("Simba has 100HP" && "Johnny has 100HP")
  end
end