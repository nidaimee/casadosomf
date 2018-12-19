module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    def structure
  [
    item('Opções', subitems: [
      item('Clientes', path: admin_clients_path),
      item('Descontos', path: admin_discounts_path),
      item('Quantidade dos Produto', path: admin_product_quantities_path),
      item('Serviços', path: admin_services_path),
      item('Produtos', path: admin_products_path),
      item('Vendas', path: admin_sells_path),
      item('Venda em Débito', path: '/admin/debits'),
    ]),
    item('+ Venda', path: '/admin/sells/new')
  ]
end

  end
end
