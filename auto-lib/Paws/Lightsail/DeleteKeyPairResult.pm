
package Paws::Lightsail::DeleteKeyPairResult;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['Unwrapped'], xmlname => 'operation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteKeyPairResult

=head1 ATTRIBUTES


=head2 Operation => L<Paws::Lightsail::Operation>

An array of key-value pairs containing information about the results of
your delete key pair request.


=head2 _request_id => Str


=cut

1;