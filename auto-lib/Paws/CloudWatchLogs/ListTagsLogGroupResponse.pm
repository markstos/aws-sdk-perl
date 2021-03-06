
package Paws::CloudWatchLogs::ListTagsLogGroupResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['Unwrapped'], xmlname => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListTagsLogGroupResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CloudWatchLogs::Tags>

The tags.


=head2 _request_id => Str


=cut

1;