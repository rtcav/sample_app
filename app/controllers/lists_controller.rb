class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成
    @list = List.new
  end

  def create
    # 1. &2. データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end


  private #書き忘れた
  #ストロングパラメータ その下のアクションに影響を与えるため最後に記述
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
