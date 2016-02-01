class StatusesController < InheritedResources::Base

  private

    def status_params
      params.require(:status).permit(:tokeno, :exrelno, :contno, :custno, :delito, :type, :size, :custinc, :weight, :tollcharge, :tokencharge, :detcharge, :triprent, :triptotamt, :drivname, :driverbata, :wghmntbata, :custbata, :pocdrivbata)
    end
end

