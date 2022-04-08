require 'rails_helper'
RSpec.describe 'タスク管理機能', type: :system do
  
  let(:task){FactoryBot.create(:task, task: '仕事',content: 'ミーティング')}

  describe '新規作成機能' do
    context 'タスクを新規作成した場合' do
      it '作成したタスクが表示される' do
        visit new_task_path
        fill_in 'Task', with: '部屋の片付け'
        fill_in 'Content', with: 'リビングと和室の片付けをする'
        click_button 'Create task'
      end
    end
  end

  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      before do
        visit tasks_path
      end
        it '登録された一覧ページに表示されているかを確認する'do
          expect(page).to have_content '仕事'
        end
    end
  end

  describe '詳細表示機能' do
    context '任意のタスク詳細画面に遷移した場合' do
      before do
        visit task_path(:task)
      end
      it '登録されたタスクが詳細ページに表示されているかを確認する' do
        expect(page).to have_content '仕事'
      end
    end
  end
end