feature "start a fight" do
  scenario "players enter their names" do
    sign_in_and_play
    expect(page).to have_content("Simba vs Johnny")
  end

  scenario "player able to attack" do
    sign_in_and_play
    expect(page).to have_button("attack")
  end

  scenario "confirmation of a hit" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content("You attacked")
  end
end

