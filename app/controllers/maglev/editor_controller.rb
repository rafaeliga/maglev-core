# frozen_string_literal: true

module Maglev
  class EditorController < ApplicationController
    include Maglev::FetchersConcern
    include Maglev::BackActionConcern
    include Maglev::UiLocaleConcern
    include Maglev::ContentLocaleConcern

    before_action :ensure_content_locale_in_path, only: :show
    before_action :set_content_locale, only: :show

    helper_method :maglev_home_page_id

    def show
      fetch_maglev_page_content
      render layout: nil
    end

    def destroy
      call_back_action
    end

    private

    def ensure_content_locale_in_path
      redirect_to editor_path('index', locale: default_content_locale) if params[:locale].blank?
    end
    
    def maglev_home_page_id
      @maglev_home_page_id ||= ::Maglev::Page.home.pick(:id) || ::Maglev::Page.home(default_content_locale).pick(:id)
    end

    def fallback_to_default_locale
      true
    end    
  end
end
