class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する
    @list = List.new
  end
  
  # 保存機能追加のために追記
  def create
    # データを受け取り新規登録するためのインスタンス
    list = List.new(list_params)
    # データをデータベースに登録するためのインスタンス
    list.save
    # トップ画面にリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
