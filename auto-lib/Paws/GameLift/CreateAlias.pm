
package Paws::GameLift::CreateAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateAlias - Arguments for method CreateAlias on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

As an example:

  $service_obj->CreateAlias(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

Human-readable description of an alias.



=head2 B<REQUIRED> Name => Str

Descriptive label associated with an alias. Alias names do not need to
be unique.



=head2 B<REQUIRED> RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

Object specifying the fleet and routing type to use for the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

