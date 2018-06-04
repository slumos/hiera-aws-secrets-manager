Puppet::Functions.create_function(:hiera_aws_secretsmanager) do
  begin
    require 'aws-sdk-secretsmanager'
  rescue LoadError
    raise Puppet::DataBinding::LookupError, 'hiera_aws_secretsmanager: aws-sdk-secretsmanager gem needs to be installed'
  end

  dispatch :lookup_key do
    param 'Variant[String, Numeric]', :key
    param 'Hash', :options
    param 'Puppet::LookupContext', :context
  end

  def get_lookup
    return @lookup || (@lookup =  LookupAwsSecretsManager.new)
  end

  def lookup_key(key, options, context)
  end
end
