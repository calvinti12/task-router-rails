Rails.application.routes.draw do
  root 'missed_calls#index'

  post 'call/enqueue'     => 'call#enqueue'
  get  'call/incoming'    => 'call#incoming'
  post 'assignment'       => 'callback#assignment'
  post 'events'           => 'callback#events'
  get  'message/incoming' => 'message#incoming'
end
