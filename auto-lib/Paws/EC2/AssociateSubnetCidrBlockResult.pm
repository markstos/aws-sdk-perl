
package Paws::EC2::AssociateSubnetCidrBlockResult;
  use Moose;
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => 'Paws::EC2::SubnetIpv6CidrBlockAssociation', xmlname => 'ipv6CidrBlockAssociation', traits => ['Unwrapped',]);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateSubnetCidrBlockResult

=head1 ATTRIBUTES


=head2 Ipv6CidrBlockAssociation => L<Paws::EC2::SubnetIpv6CidrBlockAssociation>

Information about the IPv6 CIDR block association.


=head2 SubnetId => Str

The ID of the subnet.


=head2 _request_id => Str


=cut

