class PaymentreceivesController < InheritedResources::Base

  private

    def paymentreceive_params
      params.require(:paymentreceive).permit(:clientname, :clientcom, :desc, :invoiceno, :invdate, :cbendamt, :chequen, :chqdet, :pocbendamt)
    end
end

