

Dado("que eu tenho o seguinte produto:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @product = table.hashes.first
end
  
Quando("eu faço o cadastro desse item") do
    @product_page.go_to_form
    @product_page.create(@product)
end
  
Então("devo ver este item na lista de produtos") do
    expect(page).to have_text @product["nome"]
end