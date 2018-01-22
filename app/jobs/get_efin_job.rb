class GetEfinJob < ApplicationJob
  queue_as :default

  def perform(args)
    id_number = EfinService.efin(args.with_indifferent_access)
    ActionCable.server.broadcast("response", { id_number: id_number })
  end
end
