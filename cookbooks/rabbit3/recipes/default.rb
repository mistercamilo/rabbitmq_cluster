#cookbook 'openssl', '~> 1.1.1'
#cookbook 'libssl', '~> 1.1.1'
#cookbook 'erlang', '~> 20.2.2'


['openssl', 'openssl-libs', 'erlang', 'rabbitmq'].each do |p|
  package p do
    action :install
  end
end
