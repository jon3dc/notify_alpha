# module API
#   module V1
#     class Beacons < Grape::API
#       include API::V1::Defaults

#       resource :beacons do
#         desc "Return all beacons"
#         get "", root: :beacons do
#           Beacon.all
#         end

#         desc "Return a beacon"
#         params do
#           requires :id, type: String, desc: "ID of the beacon"
#         end
#         get ":id", root: "beacon" do
#           Beacon.where(id: permitted_params[:id]).first!
#         end
#       end
#     end
#   end
# end



module API
  module V1
    class Beacons < Grape::API
      include API::V1::Defaults

      resource :beacons do
        desc "Return all beacons"
        get "", root: :beacons do
          Beacon.all
        end

        desc "Return a beacon"
        params do
          # requires :major_id, type: String, desc: "MajorID of the beacon"
          # requires :minor_id, type: , desc: "MinorID of the beacon"
          requires :major_id, :minor_id, type: String, desc: 'combined (unique) major/minor beacon id'
        end


        get ":major_id/:minor_id", root: "beacon" do
          Beacon.where(major_id: permitted_params[:major_id]).where(minor_id: permitted_params[:minor_id]).first!
        end

      end
    end
  end
end