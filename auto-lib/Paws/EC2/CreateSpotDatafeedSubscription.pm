
package Paws::EC2::CreateSpotDatafeedSubscription {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucket' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Prefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'prefix' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateSpotDatafeedSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;