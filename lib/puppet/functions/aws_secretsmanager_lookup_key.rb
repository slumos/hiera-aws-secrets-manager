Puppet::Functions.create_function(:hiera_aws_secretsmanager) do
  begin
    require 'aws-sdk-secretsmanager'
  rescue LoadError
    raise Puppet::DataBinding::LookupError, 'hiera_aws_secretsmanager: aws-sdk-secretsmanager gem needs to be installed'
  end


end
