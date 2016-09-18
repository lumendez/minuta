Rails.application.routes.draw do
  resources :tipos_usuarios
  resources :tipos_bajas
  resources :tesis_registros
  resources :sepi_programas
  resources :receso_semestres
  resources :examen_tipos
  resources :examen_graduados
  resources :cursar_asignaturas
  resources :consejero_electricas
  resources :comite_registros
  resources :clave_semestres
  resources :cambiar_temas
  resources :cambiar_consejeros
  resources :cambiar_asignaturas
  resources :baja_programas
  resources :baja_asignaturas
  resources :asignatura_electricas
  resources :agregar_asignaturas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
