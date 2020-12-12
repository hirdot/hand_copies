require 'rails_helper'

feature 'Standup' do
  # 担当に起立を号令すると'担当は慌てて起立しました'を返す
  scenario "show '担当は慌てて起立しました' when given a command 'standup'" do
    tanto = Tanto.new
    tanto.save!

    visit standup_shain_path tanto.id

    expect(page).to have_content '担当は慌てて起立しました'
  end
end

feature 'Salary' do
  # 詳細のページに社員の給与が表示される
  scenario "show salary in the show-page" do
    tanto = Tanto.new(kihonkyu: 100000)
    tanto.save!

    visit shain_path tanto.id

    expect(page).to have_content '給与: 100000'
  end
end
