require "uri"
require "net/http"
namespace :conversion do
  desc 'create api'
  task mission: :environment do
    @mission = Mission.all

    @mission.each do |mission|

      url = URI("https://api.fastforex.io/fetch-one?from=#{mission.currency1}&to=#{mission.currency2}&api_key=a802733868-8a8100651e-radp1s")
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      response = JSON.parse(https.request(request).body)
      @value  = response["result"].values
      mission.update(currency1: "#{mission.currency1}", currency2: "#{mission.currency2}", rate: @value[0])

    end 
  end

end
