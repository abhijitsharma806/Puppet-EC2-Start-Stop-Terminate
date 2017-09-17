ec2_instance { 'name-of-instance':
  ensure            => absent,
  region            => 'us-east-1',
  availability_zone => 'us-east-1a',
  image_id          => 'ami-08a28a73', # you need to select your own AMI
  instance_type     => 't2.micro',
  key_name          => 'mypuppetkey',
  subnet            => 'puppetsubnet',
  security_groups   => ['default'],
  tags              => {
    tag_name => 'value',
  },
}
