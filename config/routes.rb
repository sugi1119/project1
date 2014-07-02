Rails.application.routes.draw do
  root :to => 'pages#hamldemo'
  resources :practioners, :patients, :appointments

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'
end

#           Prefix Verb   URI Pattern                      Controller#Action
#             root GET    /                                appointment#index
#      practioners GET    /practioners(.:format)           practioners#index
#                  POST   /practioners(.:format)           practioners#create
#   new_practioner GET    /practioners/new(.:format)       practioners#new
#  edit_practioner GET    /practioners/:id/edit(.:format)  practioners#edit
#       practioner GET    /practioners/:id(.:format)       practioners#show
#                  PATCH  /practioners/:id(.:format)       practioners#update
#                  PUT    /practioners/:id(.:format)       practioners#update
#                  DELETE /practioners/:id(.:format)       practioners#destroy
#         patients GET    /patients(.:format)              patients#index
#                  POST   /patients(.:format)              patients#create
#      new_patient GET    /patients/new(.:format)          patients#new
#     edit_patient GET    /patients/:id/edit(.:format)     patients#edit
#          patient GET    /patients/:id(.:format)          patients#show
#                  PATCH  /patients/:id(.:format)          patients#update
#                  PUT    /patients/:id(.:format)          patients#update
#                  DELETE /patients/:id(.:format)          patients#destroy
#     appointments GET    /appointments(.:format)          appointments#index
#                  POST   /appointments(.:format)          appointments#create
#  new_appointment GET    /appointments/new(.:format)      appointments#new
# edit_appointment GET    /appointments/:id/edit(.:format) appointments#edit
#      appointment GET    /appointments/:id(.:format)      appointments#show
#                  PATCH  /appointments/:id(.:format)      appointments#update
#                  PUT    /appointments/:id(.:format)      appointments#update
#                  DELETE /appointments/:id(.:format)      appointments#destroy