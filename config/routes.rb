Rails.application.routes.draw do
  
  resources :ordende_compras
  resources :pedidos
  resources :rails
  resources :registro_ventas1s
  resources :reg_venta
  resources :registro_venta
  resources :proveedors
  resources :historial_compras
   resources :orden_compras
  resources :categories
  resources :articles do
  
  	resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  root 'welcome#index'

  get "/dashboard", to: "welcome#dashboard"

  put "/articles/:id/publish", to: "articles#publish"


 get '/welcome/index'
  get '/welcome/noticias'
  get '/welcome/promociones'
  get '/welcome/contactenos'
  get '/welcome/ingresar'
  get '/welcome/registrarse'
  get '/welcome/mantenimiento'
  get '/welcome/productos'
  get '/welcome/index_admin'
  get '/welcome/index_cliente'
  get '/welcome/saco'
  get '/welcome/vestido'
  get '/welcome/abrigo'
  get '/welcome/jean'
  get '/welcome/polo'
  get '/welcome/entallado'
  get '/welcome/previo_compra'
  get '/welcome/previo_compra2'
  get '/welcome/previo_compra3'
  get '/welcome/previo_compra4'
  get '/welcome/previo_compra5'
  get '/welcome/previo_compra6'
  get '/welcome/orden_revision'
  get '/welcome/orden_revisionsaco'
  get '/welcome/orden_revisionjean'
  get '/welcome/orden_revisionvestido'
  get '/welcome/orden_revisionpolo'
  get '/welcome/orden_revisionentallado'
  get '/welcome/continuar_carrito'
  get '/welcome/cart_estimate'
  get '/welcome/cart_estimateabrigo'
  get '/welcome/cart_estimatejean'
  get '/welcome/cart_estimatevestido'
  get '/welcome/cart_estimatepolo'
  get '/welcome/cart_estimateentallado'
  get '/welcome/correcto'
  get '/welcome/carrito_eliminar'
  get '/welcome/est_pedido'
  get '/welcome/historial_compras'
  get '/welcome/gestion_perfil'
  get '/welcome/correcto_registro'
  get '/welcome/continuar_carritojean'
  get '/welcome/continuar_carritoabrigo'
  get '/welcome/continuar_carritovestido'
  get '/welcome/continuar_carritopolo'
  get '/welcome/continuar_carritoentallado'
  get '/welcome/gestion_pedidos'
  get '/welcome/gestion_compras'



end
