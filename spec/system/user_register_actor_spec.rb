require 'rails_helper'

describe 'usuario registra um novo ator' do
  it 'com sucesso' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    login_as user

    visit root_path
    click_on 'Atores'
    click_on 'Cadastrar novo Ator'

    fill_in 'Nome', with: 'Ator1'
    fill_in 'Nacionalidade', with: 'Brasileiro'
    fill_in 'Nascimento', with: 1992
    click_on 'Salvar'

    expect(page).to have_content 'Ator1'
    expect(page).to have_content 'Brasileiro'
    expect(page).to have_content '1992'
    expect(current_path).to eq detalhesdoautoraqui_path
    
  end
end