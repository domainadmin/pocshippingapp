class StaffsController < InheritedResources::Base

  private

    def staff_params
      params.require(:staff).permit(:staffname, :design, :workingdays, :salary, :allowance)
    end
end

