ActiveAdmin.register Status do
    permit_params :tokeno, :exrelno, :contno, :custno, :delito, :type, :size, :custinc, :weight, :tollcharge, :tokencharge, :detcharge, :triprent, :triptotmt, :drivname, :driverbata, :wghmntbata, :custbata, :pocdrivbata 
    before_filter :skip_sidebar!, :only => :index
    menu label: "Status Report"
    
    index :title => "Status Report" do
    
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
