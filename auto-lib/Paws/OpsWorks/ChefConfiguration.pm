package Paws::OpsWorks::ChefConfiguration;
  use Moose;
  has BerkshelfVersion => (is => 'ro', isa => 'Str');
  has ManageBerkshelf => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ChefConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ChefConfiguration object:

  $service_obj->Method(Att1 => { BerkshelfVersion => $value, ..., ManageBerkshelf => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ChefConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BerkshelfVersion

=head1 DESCRIPTION

Describes the Chef configuration.

=head1 ATTRIBUTES


=head2 BerkshelfVersion => Str

  The Berkshelf version.


=head2 ManageBerkshelf => Bool

  Whether to enable Berkshelf.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

