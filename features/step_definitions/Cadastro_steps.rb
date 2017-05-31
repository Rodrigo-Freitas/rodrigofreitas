Dado(/^que esteja logado no site ORANGEHRM$/) do
	visit "http://opensource.demo.orangehrmlive.com/"
    fill_in "txtUsername", :with =>"Admin"
    fill_in "txtPassword", :with =>"admin"
    click_button("btnLogin")

end

Quando(/^adicionar um funcionário$/) do
	click_link("menu_pim_viewPimModule")
	click_link("menu_pim_addEmployee")
	
end

Então(/^prencher os dados do funcionario$/) do
	fill_in "firstName", :with => "Rodrigo"
	fill_in "lastName", :with => "Freitas"
	check("chkLogin")
	fill_in "user_name", :with => "Rodrigo.Freitas"
	fill_in "user_password", :with => "teste123"
	fill_in "re_password", :with => "teste123"
	click_button("btnSave")
end