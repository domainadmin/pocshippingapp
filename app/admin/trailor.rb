ActiveAdmin.register Trailor do
    permit_params :trailorno, :truckno, :containerno, :datatimeval, :exportcoff
    menu label: "Trailor Details"
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