Deface::Override.new(virtual_path: 'spree/admin/shared/sub_menu/_product',
  name: 'add_providers_to_product_menu',
  insert_top: "[data-hook='admin_product_sub_tabs']",
  text: '<%= tab :providers, label: "Fornecedores" %>'
)
