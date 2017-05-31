
Dado(/^que esteja no site ORANGEHRM$/) do
	visit "http://opensource.demo.orangehrmlive.com/"
    fill_in "txtUsername", :with =>"Admin"
    fill_in "txtPassword", :with =>"admin"
    click_button("btnLogin")

end

Quando(/^Editar um funcionário$/) do
	click_link("menu_pim_viewPimModule")
	click_link("menu_pim_viewEmployeeList")
	click_link("Rodrigo")

end

Então(/^prencher os dados do funcionario atualizados$/) do
	#binding.pry
	find(:xpath,'//*[@id="sidenav"]/li[7]/a').click
	#click_link('Salário')
	click_button("addSalary")
	#find(:xpath,'//*[@id="salary_sal_grd_code"]').click
	find(:xpath,'//*[@id="salary_sal_grd_code"]/option[3]').click
	#select('opção', :from =>'Executive') 
	fill_in "salary_salary_component", :with => "50000"
	find(:xpath,'//*[@id="salary_sal_grd_code"]/option[3]').click
	#select('opção', :from =>'Weekly')
	find(:xpath,'//*[@id="salary_sal_grd_code"]/option[3]').click
	#select('opção', :from =>'United States Dollar')
	fill_in "salary_basic_salary", :with => "50000"
	check("salary_set_direct_debit")
	fill_in "directdeposit_account", :with => "1010"
	find(:xpath,'//*[@id="directdeposit_account_type"]/option[2]').click
	fill_in "directdeposit_routing_num", :with => "000002020"
	fill_in "directdeposit_amount", :with => "50000"
	click_button("btnSalarySave")
end