require 'rails_helper'

describe 'Usuário visita home' do
  it 'e ve algo' do
    visit root_path

    expect(page).to have_content('SuperHero App')
  end

  it 'usuário faz login' do
    User.create!(email: 'hero@email.com', password: '123456')

    visit root_path
    click_on 'Login'
    fill_in 'email', with: 'hero@email.com'
    fill_in 'password', with: '123456'
    click_on 'Entrar'

    expect(current_path).to eq root_path
    expect(page).to have_content('Login realizado com sucesso')
  end

  it 'e cria uma nova conta' do
    # pending
  end
end