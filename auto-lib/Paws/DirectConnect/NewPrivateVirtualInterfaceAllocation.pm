package Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', xmlname => 'addressFamily', request_name => 'addressFamily', traits => ['Unwrapped','NameInRequest']);
  has AmazonAddress => (is => 'ro', isa => 'Str', xmlname => 'amazonAddress', request_name => 'amazonAddress', traits => ['Unwrapped','NameInRequest']);
  has Asn => (is => 'ro', isa => 'Int', xmlname => 'asn', request_name => 'asn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has AuthKey => (is => 'ro', isa => 'Str', xmlname => 'authKey', request_name => 'authKey', traits => ['Unwrapped','NameInRequest']);
  has CustomerAddress => (is => 'ro', isa => 'Str', xmlname => 'customerAddress', request_name => 'customerAddress', traits => ['Unwrapped','NameInRequest']);
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', xmlname => 'virtualInterfaceName', request_name => 'virtualInterfaceName', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Vlan => (is => 'ro', isa => 'Int', xmlname => 'vlan', request_name => 'vlan', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., Vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

A structure containing information about a private virtual interface
that will be provisioned on a connection.

=head1 ATTRIBUTES


=head2 AddressFamily => Str

  


=head2 AmazonAddress => Str

  


=head2 B<REQUIRED> Asn => Int

  


=head2 AuthKey => Str

  


=head2 CustomerAddress => Str

  


=head2 B<REQUIRED> VirtualInterfaceName => Str

  


=head2 B<REQUIRED> Vlan => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

