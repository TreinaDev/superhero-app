require 'rails_helper'

describe 'Usuário visita home' do
  it 'e ve algo' do
    visit root_path

    expect(page).to have_content('SuperHero App')
  end
end