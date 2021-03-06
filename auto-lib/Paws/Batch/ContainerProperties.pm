package Paws::Batch::ContainerProperties;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'command', request_name => 'command', traits => ['Unwrapped','NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuePair]', xmlname => 'environment', request_name => 'environment', traits => ['Unwrapped','NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', xmlname => 'image', request_name => 'image', traits => ['Unwrapped','NameInRequest'], required => 1);
  has JobRoleArn => (is => 'ro', isa => 'Str', xmlname => 'jobRoleArn', request_name => 'jobRoleArn', traits => ['Unwrapped','NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', xmlname => 'memory', request_name => 'memory', traits => ['Unwrapped','NameInRequest'], required => 1);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::Batch::MountPoint]', xmlname => 'mountPoints', request_name => 'mountPoints', traits => ['Unwrapped','NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', xmlname => 'privileged', request_name => 'privileged', traits => ['Unwrapped','NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', xmlname => 'readonlyRootFilesystem', request_name => 'readonlyRootFilesystem', traits => ['Unwrapped','NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Ulimit]', xmlname => 'ulimits', request_name => 'ulimits', traits => ['Unwrapped','NameInRequest']);
  has User => (is => 'ro', isa => 'Str', xmlname => 'user', request_name => 'user', traits => ['Unwrapped','NameInRequest']);
  has Vcpus => (is => 'ro', isa => 'Int', xmlname => 'vcpus', request_name => 'vcpus', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Volume]', xmlname => 'volumes', request_name => 'volumes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ContainerProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ContainerProperties object:

  $service_obj->Method(Att1 => { Command => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ContainerProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

Container properties are used in job definitions to describe the
container that is launched as part of a job.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command that is passed to the container. This parameter maps to
C<Cmd> in the Create a container section of the Docker Remote API and
the C<COMMAND> parameter to docker run. For more information, see
https://docs.docker.com/engine/reference/builder/#cmd.


=head2 Environment => ArrayRef[L<Paws::Batch::KeyValuePair>]

  The environment variables to pass to a container. This parameter maps
to C<Env> in the Create a container section of the Docker Remote API
and the C<--env> option to docker run.

We do not recommend using plain text environment variables for
sensitive information, such as credential data.


=head2 B<REQUIRED> Image => Str

  The image used to start a container. This string is passed directly to
the Docker daemon. Images in the Docker Hub registry are available by
default. Other repositories are specified with C<
I<repository-url>/I<image>:I<tag> >. Up to 255 letters (uppercase and
lowercase), numbers, hyphens, underscores, colons, periods, forward
slashes, and number signs are allowed. This parameter maps to C<Image>
in the Create a container section of the Docker Remote API and the
C<IMAGE> parameter of docker run.

=over

=item *

Images in Amazon ECR repositories use the full registry and repository
URI (for example,
C<012345678910.dkr.ecr.E<lt>region-nameE<gt>.amazonaws.com/E<lt>repository-nameE<gt>>).

=item *

Images in official repositories on Docker Hub use a single name (for
example, C<ubuntu> or C<mongo>).

=item *

Images in other repositories on Docker Hub are qualified with an
organization name (for example, C<amazon/amazon-ecs-agent>).

=item *

Images in other online repositories are qualified further by a domain
name (for example, C<quay.io/assemblyline/ubuntu>).

=back



=head2 JobRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that the container can
assume for AWS permissions.


=head2 B<REQUIRED> Memory => Int

  The hard limit (in MiB) of memory to present to the container. If your
container attempts to exceed the memory specified here, the container
is killed. This parameter maps to C<Memory> in the Create a container
section of the Docker Remote API and the C<--memory> option to docker
run.


=head2 MountPoints => ArrayRef[L<Paws::Batch::MountPoint>]

  The mount points for data volumes in your container. This parameter
maps to C<Volumes> in the Create a container section of the Docker
Remote API and the C<--volume> option to docker run.


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user). This
parameter maps to C<Privileged> in the Create a container section of
the Docker Remote API and the C<--privileged> option to docker run.


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system. This parameter maps to C<ReadonlyRootfs> in the
Create a container section of the Docker Remote API and the
C<--read-only> option to C<docker run>.


=head2 Ulimits => ArrayRef[L<Paws::Batch::Ulimit>]

  A list of C<ulimits> to set in the container. This parameter maps to
C<Ulimits> in the Create a container section of the Docker Remote API
and the C<--ulimit> option to docker run.


=head2 User => Str

  The user name to use inside the container. This parameter maps to
C<User> in the Create a container section of the Docker Remote API and
the C<--user> option to docker run.


=head2 B<REQUIRED> Vcpus => Int

  The number of vCPUs reserved for the container. This parameter maps to
C<CpuShares> in the Create a container section of the Docker Remote API
and the C<--cpu-shares> option to docker run. Each vCPU is equivalent
to 1,024 CPU shares.


=head2 Volumes => ArrayRef[L<Paws::Batch::Volume>]

  A list of data volumes used in a job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

