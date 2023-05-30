require 'rails_helper'

describe 'Usuário visita home' do
  it 'e ve algo' do
    visit root_path

    expect(page).to have_content('SuperHero App')
  end

  it 'usuário faz login' do
    User.create!(email: 'hero@email.com', password: '123456')

    visit root_path
    click_on 'Entrar'
    fill_in 'email', with: 'hero@email.com'
    fill_in 'password', with: '123456'
    click_on 'Login'

    expect(current_path).to eq root_path
    expect(page).to have_content('Login feito com sucesso')
  end
end