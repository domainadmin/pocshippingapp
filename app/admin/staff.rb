ActiveAdmin.register Staff do
    permit_params :staffname, :design, :workingdays, :salary, :allowance
    menu label: "Staff"
    
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
    index :title => "Staff" do
        selectable_column
        column "Staff name", :staffname
        column "Designation", :design
        column "Working days", :workingdays
        column "Salary", :salary
        column "Allowance", :allowance
        actions
    end
    form do |f|
        f.inputs "Staff" do
            f.input :staffname, :label => "Staff name"
            f.input :design, :label => "Designation"
            f.input :workingdays, :label => "Working days"
            f.input :salary, :label => "Salary"
            f.input :allowance, :label => "Allowance"
        end
        f.actions
    end
end
