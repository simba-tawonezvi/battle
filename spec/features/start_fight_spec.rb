feature "start a fight" do
  scenario "players enter their names" do
    player_1 = "Simba"
    player_2 = "Johnny"
    message = "Welcome to your game #{player_1} and #{player_2}"

    visit("/")
    fill_in "player_one", with: player_1
    fill_in "player_two", with: player_2
    click_button("Submit")
    expect(page).to have_content(message)
  end
end

