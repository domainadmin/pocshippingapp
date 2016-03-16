ActiveAdmin.register Offexp do
       permit_params :offurn, :ofstat, :offpp, :offtbill, :offintbill, :offroomrent, :offrent, :offren, :offspfee, :offstfsal, :offstvimed
    menu label: "Office Expenses"
        before_filter :skip_sidebar!, :only => :index

    index :title => "Office Expenses" do
        selectable_column
        column "Furniture", :offurn
        column "Stationery", :ofstat
        column "Paper & Print", :offpp
        column "Telephone", :offtbill
        column "Internet", :offintbill
        column "Staff Room Rent", :offroomrent
        column "Office Rent", :offrent
        column "Sponsor Fee", :offspfee
        column "Staff Salary", :offstfsal
        column "Visa & Medical", :offstvimed
        column "Total" do |sum|
            sum.offurn.to_s.to_i + sum.ofstat.to_s.to_i + sum.offpp.to_s.to_i + sum.offtbill.to_s.to_i + sum.offintbill.to_s.to_i + sum.offroomrent.to_s.to_i + sum.offrent.to_s.to_i + sum.offspfee.to_s.to_i + sum.offstfsal.to_s.to_i + sum.offstvimed.to_s.to_i
        end
        actions
    end
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

    form do |f|
        f.inputs "Log expenses" do
            f.input :offurn, :label => "Furniture"
            f.input :ofstat, :label => "Stationery"
            f.input :offpp, :label => "Paper & Print"
            f.input :offtbill, :label => "Telephone"
            f.input :offintbill, :label => "Internet"
            f.input :offroomrent, :label => "Staff Room Rent"
            f.input :offrent, :label => "Office Rent"
            f.input :offspfee, :label => "Sponsor Fee"
            f.input :offstfsal, :label => "Staff Salary"
            f.input :offstvimed, :label => "Visa & Medical"
        end
        f.actions
    end
end
