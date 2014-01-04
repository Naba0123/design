require 'spec_helper'

feature 'ログイン' do
  background do
    FactoryGirl.create(:arale)
  end

  scenario 'ユーザ認証失敗' do
    visit signin_path
    within('form#signin') do
      fill_in 'account', with: 'taro'
      fill_in 'pass', with: 'wrong_password'
      click_button 'Sign in'
    end
    expect(page).to have_css('p.text-info', 'アカウント名またはパスワードが間違っています')
    expect(page).to have_css('form#signin')
  end

  scenario 'ユーザ認証成功' do
    visit signin_path
    within('form#signin') do
      fill_in 'account', with: 'arale'
      fill_in 'pass', with: 'hoge'
      click_button 'Sign in'
    end
    expect(page).not_to have_css('form#signin')
  end
end
