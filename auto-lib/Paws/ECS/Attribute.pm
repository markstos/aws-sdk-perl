package Paws::ECS::Attribute;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TargetId => (is => 'ro', isa => 'Str', xmlname => 'targetId', request_name => 'targetId', traits => ['Unwrapped','NameInRequest']);
  has TargetType => (is => 'ro', isa => 'Str', xmlname => 'targetType', request_name => 'targetType', traits => ['Unwrapped','NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', xmlname => 'value', request_name => 'value', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Attribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Attribute object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Attribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Attributes are name-value pairs associated with various Amazon ECS
objects. Attributes allow you to extend the Amazon ECS data model by
adding custom metadata to your resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the attribute. Up to 128 letters (uppercase and lowercase),
numbers, hyphens, underscores, and periods are allowed.


=head2 TargetId => Str

  The ID of the target. You can specify the short form ID for a resource
or the full Amazon Resource Name (ARN).


=head2 TargetType => Str

  The type of the target with which to attach the attribute. This
parameter is required if you use the short form ID for a resource
instead of the full Amazon Resource Name (ARN).


=head2 Value => Str

  The value of the attribute. Up to 128 letters (uppercase and
lowercase), numbers, hyphens, underscores, periods, at signs (@),
forward slashes, colons, and spaces are allowed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

