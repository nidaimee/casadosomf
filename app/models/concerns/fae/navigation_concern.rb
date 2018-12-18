module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    # define the navigation structure in this file
    # example structure:
    #
    # def structure
    #   [
    #     item('Top Nav Item 1', subitems: [
    #       item('Top Nav Dropdown Item 1', class: 'custom-class', path: some_named_route_path),
    #       item('Top Nav Dropdown Item 2', subitems: [
    #         item('Side Nav Item 1', subitems: [
    #           item('Side Nav Nested Item', path: some_named_route_path)
    #         ]),
    #         item('Side Nav Item 1', path: some_named_route_path)
    #       ]),
    #     ]),
    #     item('Pages', subitems: [
    #       item('Home', path: fae.edit_content_block_path('home')),
    #       item('About Us', path: fae.edit_content_block_path('about_us'))
    #     ])
    #   ]
    # end

    def structure
  [
    item('Opções', subitems: [
      item('Clientes', path: admin_clients_path),
      item('Descontos', path: admin_discounts_path),
      item('Quantidade dos Produto', path: admin_product_quantities_path),
      item('Endereços', path: admin_addresses_path),
      item('Serviços', path: admin_services_path),
      item('Produtos', path: admin_products_path),
      item('Vendas', path: admin_sells_path),
    ]),
    item('+ Sell', path: '/admin/sells/new')
  ]
end

  end
end
