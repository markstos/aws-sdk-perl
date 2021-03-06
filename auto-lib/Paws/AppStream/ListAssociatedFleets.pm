
package Paws::AppStream::ListAssociatedFleets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::ListAssociatedFleetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListAssociatedFleets - Arguments for method ListAssociatedFleets on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedFleets on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method ListAssociatedFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedFleets.

As an example:

  $service_obj->ListAssociatedFleets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StackName => Str

The name of the stack whose associated fleets are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedFleets in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

