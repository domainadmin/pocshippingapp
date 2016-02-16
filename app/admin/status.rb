ActiveAdmin.register Status do
    permit_params :tokeno, :exrelno, :contno, :custno, :delito, :type, :size, :custinc, :weight, :tollcharge, :tokencharge, :detcharge, :triprent, :triptotamt, :drivname, :driverbata, :wghmntbata, :custbata, :pocdrivbata 
    menu label: "Status Report"
    
    index :title => "Status Report" do

    end
    form do |f|
        f.inputs "Status" do
            f.input :tokeno, :label => "Token number"
            f.input :exrelno, :label => "Export Release number"
            f.input :contno, :label => "Container number"
            f.input :custno, :label => "Customer number"
            f.input :delito, :label => "Delivery To"
            f.input :type, :label => "Delivery Type"
            f.input :size, :label => "Size"
            f.input :custinc, :label => "Customs Inpection Charges"
            f.input :weight, :label => "Weight"
            f.input :tollcharge, :label => "Toll charge"
            f.input :tokencharge, :label => "Token charge"
            f.input :detcharge, :label => "Detention charge"
            f.input :triprent, :label => "Trip rent"
            f.input :triptotamt, :label => "Trip total amount"
            f.input :drivname, :label => "Driver name"
            f.input :driverbata, :label => "Driver Bata"
            f.input :wghmntbata, :label => "W Mgnt Bata"
            f.input :custbata, :label => "Customer Bata"
            f.input :pocdrivbata, :label => "POC Driver Bata"
        end
        f.actions
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


end
