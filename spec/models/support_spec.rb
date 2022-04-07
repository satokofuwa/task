require 'rails_helper'
describe 'タスクモデル機能', type: :model do
  describe 'バリデーションのテスト' do

    context 'タスクのタイトルが空の場合' do
      it 'バリデーションにひっかる' do
        support = Support.new(task: nil)
        expect(support).not_to be_valid
      end
    end
     context 'タスクの詳細が空の場合' do
      it 'バリデーションにひっかかる' do
        support = Support.new(content: nil)
        expect(support).not_to be_valid
      end
    end

    context 'タスクのタイトルと詳細に内容が記載されている場合' do
      it 'バリデーションが通る' do
        support = Support.new(task: '成功', content: '成功タスク')
        expect(support).to be_valid
      end
    end
  end
end