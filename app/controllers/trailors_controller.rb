class TrailorsController < InheritedResources::Base

  private

    def trailor_params
      params.require(:trailor).permit(:trailorno, :truckno, :containerno, :datetimeval, :exportcoff)
    end
end

