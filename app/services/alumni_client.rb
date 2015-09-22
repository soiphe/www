class AlumniClient

  def initialize
    @base_url = "http://alumni.lewagon.org/api/v1"
  end

  def stories
    JSON.parse(RestClient.get("#{@base_url}/stories"))["stories"]
  end

end
