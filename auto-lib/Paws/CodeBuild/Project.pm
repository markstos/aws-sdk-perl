package Paws::CodeBuild::Project;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', xmlname => 'artifacts', request_name => 'artifacts', traits => ['Unwrapped','NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', xmlname => 'created', request_name => 'created', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has EncryptionKey => (is => 'ro', isa => 'Str', xmlname => 'encryptionKey', request_name => 'encryptionKey', traits => ['Unwrapped','NameInRequest']);
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', xmlname => 'environment', request_name => 'environment', traits => ['Unwrapped','NameInRequest']);
  has LastModified => (is => 'ro', isa => 'Str', xmlname => 'lastModified', request_name => 'lastModified', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has ServiceRole => (is => 'ro', isa => 'Str', xmlname => 'serviceRole', request_name => 'serviceRole', traits => ['Unwrapped','NameInRequest']);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', xmlname => 'source', request_name => 'source', traits => ['Unwrapped','NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', xmlname => 'tags', request_name => 'tags', traits => ['Unwrapped','NameInRequest']);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', xmlname => 'timeoutInMinutes', request_name => 'timeoutInMinutes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Project

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Project object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Project object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build project.

=head1 ATTRIBUTES


=head2 Arn => Str

  The build project's Amazon Resource Name (ARN).


=head2 Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

  Information about the build project's build output artifacts.


=head2 Created => Str

  When the build project was created, expressed in Unix time format.


=head2 Description => Str

  A meaningful description of the build project.


=head2 EncryptionKey => Str

  The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build project's build output artifacts.

This is expressed either as the CMK's Amazon Resource Name (ARN) or, if
specified, the CMK's alias (using the format C<alias/I<alias-name> >).


=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

  Information about the build environment for this build project.


=head2 LastModified => Str

  When the build project's settings were last modified, expressed in Unix
time format.


=head2 Name => Str

  The build project's name.


=head2 ServiceRole => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that enables AWS CodeBuild to interact with
dependent AWS services on behalf of the AWS account.


=head2 Source => L<Paws::CodeBuild::ProjectSource>

  Information about the build project's build input source code.


=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

  The tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.


=head2 TimeoutInMinutes => Int

  How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait
to timeout any related build that did not get marked as completed. The
default is 60 minutes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

