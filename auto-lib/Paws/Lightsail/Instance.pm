package Paws::Lightsail::Instance;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has BlueprintId => (is => 'ro', isa => 'Str', xmlname => 'blueprintId', request_name => 'blueprintId', traits => ['Unwrapped','NameInRequest']);
  has BlueprintName => (is => 'ro', isa => 'Str', xmlname => 'blueprintName', request_name => 'blueprintName', traits => ['Unwrapped','NameInRequest']);
  has BundleId => (is => 'ro', isa => 'Str', xmlname => 'bundleId', request_name => 'bundleId', traits => ['Unwrapped','NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest']);
  has Hardware => (is => 'ro', isa => 'Paws::Lightsail::InstanceHardware', xmlname => 'hardware', request_name => 'hardware', traits => ['Unwrapped','NameInRequest']);
  has Ipv6Address => (is => 'ro', isa => 'Str', xmlname => 'ipv6Address', request_name => 'ipv6Address', traits => ['Unwrapped','NameInRequest']);
  has IsStaticIp => (is => 'ro', isa => 'Bool', xmlname => 'isStaticIp', request_name => 'isStaticIp', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Networking => (is => 'ro', isa => 'Paws::Lightsail::InstanceNetworking', xmlname => 'networking', request_name => 'networking', traits => ['Unwrapped','NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', request_name => 'privateIpAddress', traits => ['Unwrapped','NameInRequest']);
  has PublicIpAddress => (is => 'ro', isa => 'Str', xmlname => 'publicIpAddress', request_name => 'publicIpAddress', traits => ['Unwrapped','NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', xmlname => 'resourceType', request_name => 'resourceType', traits => ['Unwrapped','NameInRequest']);
  has SshKeyName => (is => 'ro', isa => 'Str', xmlname => 'sshKeyName', request_name => 'sshKeyName', traits => ['Unwrapped','NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::Lightsail::InstanceState', xmlname => 'state', request_name => 'state', traits => ['Unwrapped','NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', xmlname => 'supportCode', request_name => 'supportCode', traits => ['Unwrapped','NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', xmlname => 'username', request_name => 'username', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Instance object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes an instance (a virtual private server).

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the instance (e.g.,
C<arn:aws:lightsail:us-east-1:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE>).


=head2 BlueprintId => Str

  The blueprint ID (e.g., C<os_amlinux_2016_03>).


=head2 BlueprintName => Str

  The friendly name of the blueprint (e.g., C<Amazon Linux>).


=head2 BundleId => Str

  The bundle for the instance (e.g., C<micro_1_0>).


=head2 CreatedAt => Str

  The timestamp when the instance was created (e.g., C<1479734909.17>).


=head2 Hardware => L<Paws::Lightsail::InstanceHardware>

  The size of the vCPU and the amount of RAM for the instance.


=head2 Ipv6Address => Str

  The IPv6 address of the instance.


=head2 IsStaticIp => Bool

  A Boolean value indicating whether this instance has a static IP
assigned to it.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The region name and availability zone where the instance is located.


=head2 Name => Str

  The name the user gave the instance (e.g.,
C<Amazon_Linux-1GB-Virginia-1>).


=head2 Networking => L<Paws::Lightsail::InstanceNetworking>

  Information about the public ports and monthly data transfer rates for
the instance.


=head2 PrivateIpAddress => Str

  The private IP address of the instance.


=head2 PublicIpAddress => Str

  The public IP address of the instance.


=head2 ResourceType => Str

  The type of resource (usually C<Instance>).


=head2 SshKeyName => Str

  The name of the SSH key being used to connect to the instance (e.g.,
C<LightsailDefaultKeyPair>).


=head2 State => L<Paws::Lightsail::InstanceState>

  The status code and the state (e.g., C<running>) for the instance.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.


=head2 Username => Str

  The user name for connecting to the instance (e.g., C<ec2-user>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

