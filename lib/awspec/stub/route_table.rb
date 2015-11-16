Aws.config[:ec2] = {
  stub_responses: {
    describe_instances: {
      reservations: [
        {
          instances: [
            {
              instance_id: 'i-ec12345a',
              image_id: 'ami-abc12def',
              vpc_id: 'vpc-ab123cde',
              subnet_id: 'subnet-1234a567',
              public_ip_address: '123.0.456.789',
              private_ip_address: '10.0.1.1',
              instance_type: 't2.small',
              state: {
                name: 'running'
              },
              security_groups: [
                {
                  group_id: 'sg-1a2b3cd4',
                  group_name: 'my-security-group-name'
                }
              ],
              block_device_mappings: [
                {
                  device_name: '/dev/sda',
                  ebs: {
                    volume_id: 'vol-123a123b'
                  }
                }
              ],
              tags: [
                {
                  key: 'Name',
                  value: 'my-ec2'
                }
              ]
            }
          ]
        }
      ]
    },
    describe_vpcs: {
      vpcs: [
        {
          vpc_id: 'vpc-ab123cde',
          state: 'available',
          cidr_block: '10.0.0.0/16',
          tags: [
            {
              key: 'Name',
              value: 'my-vpc'
            }
          ]
        }
      ]
    },
    describe_route_tables: {
      route_tables: [
        {
          route_table_id: 'rtb-a12bcd34',
          vpc_id: 'vpc-ab123cde',
          routes: [
            {
              destination_cidr_block: '10.0.0.0/16',
              destination_prefix_list_id: nil,
              gateway_id: 'local',
              instance_id: nil,
              instance_owner_id: nil,
              network_interface_id: nil,
              vpc_peering_connection_id: nil,
              state: 'active'
            },
            {
              destination_cidr_block: '0.0.0.0/0',
              destination_prefix_list_id: nil,
              gateway_id: 'igw-1ab2345c',
              instance_id: nil,
              instance_owner_id: nil,
              network_interface_id: nil,
              vpc_peering_connection_id: nil,
              state: 'active'
            },
            {
              destination_cidr_block: '192.168.1.0/16',
              destination_prefix_list_id: nil,
              gateway_id: nil,
              instance_id: 'i-ec12345a',
              instance_owner_id: nil,
              network_interface_id: nil,
              vpc_peering_connection_id: nil,
              state: 'active'
            }
          ],
          tags: [
            {
              key: 'Name',
              value: 'my-route-table'
            }
          ]
        }
      ]
    },
    describe_internet_gateways: {
      internet_gateways: [
        {
          internet_gateway_id: 'igw-1ab2345c',
          attachments:
            [
              {
                vpc_id: 'vpc-ab123cde',
                state: 'available'
              }
            ],
          tags: [
            {
              key: 'Name',
              value: 'my-igw'
            }
          ]
        }
      ]
    }
  }
}
