Rails.application.routes.draw do

  # home
  root 'welcome_page#welcome'

  # saved event
  get 'track_events/saved'
  # digest sent
  get 'track_events/sent'

  # digest page
  get 'track_events/digest'
  post 'track_events/get_digest'

  # deletion
  get 'track_events/delete_all' => 'track_events#delete_it_all'

  # Track events resource (new, show, get one, etc)
  resources :track_events

  # admin redirection
  get 'admin', to: redirect('/track_events')

end
