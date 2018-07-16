class LookupAwsSecretsManager
  def initialize(config = {})
    require 'aws-sdk-secretsmanager'
    @client = Aws::SecretsManager::Client.new
  end

  def lookup_secret(secret_id)
    return @client.get_secret_value(secret_id: secret_id).secret_string
  end
end
