class LookupAwsSecretsManager
  def initialize(config = {})
    require 'aws-sdk-secretsmanager'
    @client = Aws::SecretsManager::Client.new
  end

  def lookup_secret(secret_id)
    secret = JSON.parse(@client.get_secret_value(secret_id: secret_id))
    return secret.secret_string
  end
end
