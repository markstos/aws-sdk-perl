
package Paws::Pinpoint::GetApnsChannelResponse;
  use Moose;
  has APNSChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::APNSChannelResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetApnsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSChannelResponse => L<Paws::Pinpoint::APNSChannelResponse>




=head2 _request_id => Str


=cut

