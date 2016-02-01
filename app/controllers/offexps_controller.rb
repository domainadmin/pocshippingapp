class OffexpsController < InheritedResources::Base

  private

    def offexp_params
      params.require(:offexp).permit(:offurn, :ofstat, :offpp, :offtbill, :offintbill, :offroomrent, :offrent, :offren, :offspfee, :offstfsal, :offstvimed)
    end
end

