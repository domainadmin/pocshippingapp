ActiveAdmin.register Paymentreceive do
    menu label: "Payment Received"
    index :title => "Payment Received" do
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
        f.inputs "Payment Received" do
            f.input :clientname, :label => "Client Name"
            f.input :clientcom, :label => "Client Company"
            f.input :desc, :label => "Description"
            f.input :invoiceno, :label => "Invoice number"
            f.input :invdate, :label => "Invoice date"
        end
        f.actions
    end
end
