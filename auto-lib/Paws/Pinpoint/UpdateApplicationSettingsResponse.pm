
package Paws::Pinpoint::UpdateApplicationSettingsResponse;
  use Moose;
  has ApplicationSettingsResource => (is => 'ro', isa => 'Paws::Pinpoint::ApplicationSettingsResource', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApplicationSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSettingsResource => L<Paws::Pinpoint::ApplicationSettingsResource>




=head2 _request_id => Str


=cut

