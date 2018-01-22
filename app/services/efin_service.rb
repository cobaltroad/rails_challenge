class EfinService
  include HTTParty
  base_uri 'efin.oddball.io'

  class << self
    def health
      response = get('/health')
      response.body if response.ok?
    end

    def efin(options)
      post_options = {
        body: {
          household: options[:household_size],
          income: options[:income]
        }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      }

      response = post('/', post_options)
      if response.ok?
        body = response.body
        parsed_xml = Nokogiri::XML(body)
        parsed_xml.at_xpath("//efin").text
      end
    end
  end
end
