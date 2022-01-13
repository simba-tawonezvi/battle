def sign_in_and_play
  visit("/")
  fill_in "player_one", with: "Simba"
  fill_in "player_two", with: "Johnny"
  click_button("Submit")
end