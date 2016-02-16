ActiveAdmin.register Offexp do
       permit_params :offurn, :ofstat, :offpp, :offtbill, :offintbill, :offroomrent, :offrent, :offren, :offspfee, :offstfsal, :offstvimed
    menu label: "Office Expenses"

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
