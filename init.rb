require 'redmine'
require_dependency 'redmine_omniauth_azure/hooks'

Redmine::Plugin.register :redmine_omniauth_azure do
  name 'Redmine Omniauth Azure plugin'
  author 'Gucin Tsui'
  description 'This is a plugin for Redmine registration through Azure AD'
  url 'https://github.com/Gucin/redmine_omniauth_azure'
  author_url 'https://github.com/'
  version '1.0.0'
  requires_redmine :version_or_higher => '2.3.0'

  settings :default => {
    :client_id => "",
    :client_secret => "",
    :azure_oauth_authentication => false,
    :allowed_domains => ""
  }, :partial => 'settings/azure_settings'
end
