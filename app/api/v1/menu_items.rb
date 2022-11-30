# frozen_string_literal: true

module V1
  class MenuItems < Grape::API
    desc 'list of menu_items' do
      headers Auth::Desc.headers
      success V1::Entities::MenuItem
      is_array true
    end
    params do
      optional :limit, type: Integer, default: 999, desc: '조회 갯수'
      optional :page, type: Integer, default: 1, desc: '페이지 번호'
    end
    get '/menu_items' do
      authenticate!
      menu_items = current_user.menu_items.page(params[:page]).per(params[:limit]).order(id: :desc)
      present menu_items, with: V1::Entities::MenuItem
    end
  end
end