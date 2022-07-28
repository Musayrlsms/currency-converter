class Mission < ApplicationRecord
    after_create do
        require "uri"
        require "net/http"
        url = URI("https://api.fastforex.io/fetch-one?from=#{currency1}&to=#{currency2}&api_key=a802733868-8a8100651e-radp1s")
        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true
        request = Net::HTTP::Get.new(url)
        response = JSON.parse(https.request(request).body)
        @value  = response["result"].values
        update(currency1: "#{currency1}", currency2: "#{currency2}", rate: @value[0])
    end
    validates :currency1, :currency2, presence: true
    validates_format_of :currency1, :currency2, with: /\A[A-Z]{3}\z/, message: "geçersiz kod"
    #validates :currency1, inclusion: { in: %w(TRY USD EUR),
     #   message: "%{value} is not a valid size" }
end
