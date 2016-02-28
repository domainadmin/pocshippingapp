ActiveAdmin.register Trailor do
    permit_params :trailorno, :truckno, :containerno, :datatimeval, :exportcoff
    menu label: "Trailor Details"
    index :title => "Trailor Details" do
        selectable_column
        column "Trailor Number", :trailorno
        column "Truck Number", :truckno
        column "Container Number", :containerno
        column "Date / Time", :datetimeval
        column "Export Cutoff", :exportcoff
        actions
    end
    
    filter :trailorno, :label => "Trailor Number"
    filter :truckno, :label => "Truck Number"
    filter :containerno, :label => "Container Number"
    filter :datetimeval, :label => "Date / Time"
    filter :exportcoff, :label => "Export Cutoff"

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
        f.inputs "Trailor" do
            f.input :trailorno, :label => "Trailor Number"        
            f.input :truckno, :label => "Truck Number"
            f.input :containerno, :label => "Container Number"
            f.input :datetimeval, :label => "Date / Time"
            f.input :exportcoff, :label => "Export Cutoff"
        end
    f.actions
end
end
