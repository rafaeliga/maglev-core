# frozen_string_literal: true

Maglev.configure do |config|
  # Title of the Editor window
  # config.title = 'Maglev - Editor'

  # Logo of the Editor (top left corner).
  # Put your custom logo in the app/assets/images folder of your Rails application.
  # config.logo = 'logo.png'

  # Favicon (window tab)
  # Put your custom favicon in the app/assets/images folder of your Rails application.
  # config.favicon = 'favicon.ico'

  # Primary color of the Editor
  # config.primary_color = '#7E6EDB'

  # Action triggered when clicking on the very bottom left button in the Editor
  # config.back_action = 'https://www.mysite.dev' # External url
  # config.back_action = :my_account_path # name of the route in your Rails application
  # config.back_action = ->(site) { redirect_to main_app.my_account_path(site_id: site.id) }

  # I18n locale used in the Editor UI (by default, I18n.locale will be used)
  # config.ui_locale = 'fr' # make sure your locale has been registered in Rails.
  # config.ui_locale = :find_my_locale # name of a protected method from your Rails application controller
  # config.ui_locale = ->(site) { 'fr' }

  # Default locales of a site. By default, Maglev will use English (en).
  # This setting will only be used when creating the site.
  # If you want add more locales to your site, use the SetSiteLocalesService (https://docs.maglev.dev/guides/i18n).
  # The first locale of the array will be considered as the default locale of the site
  # config.default_site_locales = [{ label: 'English', prefix: 'en' }, { label: 'French', prefix: 'fr' }]

  # Uploader engine (:active_storage is only supported for now)
  config.uploader = :active_storage

  # Collections mapping (https://docs.maglev.dev/guides/setup-collections)
  # config.collections = {
  #   products: {
  #     model: 'Product',
  #     fields: {
  #       label: :name,
  #       image: :thumbnail_url
  #     }
  #   }
  # }
end
