class GetEfinJob < ApplicationJob
  queue_as :default

  def perform(args)
    id_number = EfinService.efin(args.with_indifferent_access)
    puts "EFIN #{id_number}"
  end
end
