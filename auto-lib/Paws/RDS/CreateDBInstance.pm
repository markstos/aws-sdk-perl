
package Paws::RDS::CreateDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstance - Arguments for method CreateDBInstance on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstance on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CreateDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstance.

As an example:

  $service_obj->CreateDBInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to be initially allocated for the
database instance.

Type: Integer

B<MySQL>

Constraints: Must be an integer from 5 to 6144.

B<MariaDB>

Constraints: Must be an integer from 5 to 6144.

B<PostgreSQL>

Constraints: Must be an integer from 5 to 6144.

B<Oracle>

Constraints: Must be an integer from 10 to 6144.

B<SQL Server>

Constraints: Must be an integer from 200 to 4096 (Standard Edition and
Enterprise Edition) or from 20 to 4096 (Express Edition and Web
Edition)



=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades will be applied automatically to
the DB instance during the maintenance window.

Default: C<true>



=head2 AvailabilityZone => Str

The EC2 Availability Zone that the database instance will be created
in. For information on regions and Availability Zones, see Regions and
Availability Zones.

Default: A random, system-chosen Availability Zone in the endpoint's
region.

Example: C<us-east-1d>

Constraint: The AvailabilityZone parameter cannot be specified if the
MultiAZ parameter is set to C<true>. The specified Availability Zone
must be in the same region as the current endpoint.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. Setting this
parameter to 0 disables automated backups.

Default: 1

Constraints:

=over

=item *

Must be a value from 0 to 35

=item *

Cannot be set to 0 if the DB instance is a source to Read Replicas

=back




=head2 CharacterSetName => Str

For supported engines, indicates that the DB instance should be
associated with the specified CharacterSet.



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the DB instance to snapshots of the DB
instance; otherwise false. The default is false.



=head2 DBClusterIdentifier => Str

The identifier of the DB cluster that the instance will belong to.

For information on creating a DB cluster, see CreateDBCluster.

Type: String



=head2 B<REQUIRED> DBInstanceClass => Str

The compute and memory capacity of the DB instance.

Valid Values: C<db.t1.micro | db.m1.small | db.m1.medium | db.m1.large
| db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge |
db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large
| db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge |
db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge |
db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large>



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier. This parameter is stored as a lowercase
string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15
for SQL Server).

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 DBName => Str

The meaning of this parameter differs according to the database engine
you use.

Type: String

B<MySQL>

The name of the database to create when the DB instance is created. If
this parameter is not specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 alphanumeric characters

=item *

Cannot be a word reserved by the specified database engine

=back

B<MariaDB>

The name of the database to create when the DB instance is created. If
this parameter is not specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 alphanumeric characters

=item *

Cannot be a word reserved by the specified database engine

=back

B<PostgreSQL>

The name of the database to create when the DB instance is created. If
this parameter is not specified, the default "postgres" database is
created in the DB instance.

Constraints:

=over

=item *

Must contain 1 to 63 alphanumeric characters

=item *

Must begin with a letter or an underscore. Subsequent characters can be
letters, underscores, or digits (0-9).

=item *

Cannot be a word reserved by the specified database engine

=back

B<Oracle>

The Oracle System ID (SID) of the created DB instance.

Default: C<ORCL>

Constraints:

=over

=item *

Cannot be longer than 8 characters

=back

B<SQL Server>

Not applicable. Must be null.

B<Amazon Aurora>

The name of the database to create when the primary instance of the DB
cluster is created. If this parameter is not specified, no database is
created in the DB instance.

Constraints:

=over

=item *

Must contain 1 to 64 alphanumeric characters

=item *

Cannot be a word reserved by the specified database engine

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.
If this argument is omitted, the default DBParameterGroup for the
specified engine will be used.

Constraints:

=over

=item *

Must be 1 to 255 alphanumeric characters

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.



=head2 Domain => Str

Specify the Active Directory Domain to create the instance in.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

Valid Values: C<mysql> | C<mariadb> | C<oracle-se1> | C<oracle-se2> |
C<oracle-se> | C<oracle-ee> | C<sqlserver-ee> | C<sqlserver-se> |
C<sqlserver-ex> | C<sqlserver-web> | C<postgres> | C<aurora>

Not every database engine is available for every AWS region.



=head2 EngineVersion => Str

The version number of the database engine to use.

The following are the database engines and major and minor versions
that are available with Amazon RDS. Not every database engine is
available for every AWS region.

B<Amazon Aurora>

=over

=item *

B<Version 5.6 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-2, eu-west-1, us-east-1,
us-east-2, us-west-2):> C< 5.6.10a>

=back

B<MariaDB>

=over

=item *

B<Version 10.1 (available in these AWS regions: us-east-2):> C<
10.1.16>

=item *

B<Version 10.1 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-west-1, us-west-2):>
C< 10.1.14>

=item *

B<Version 10.0 (available in all AWS regions):> C< 10.0.24>

=item *

B<Version 10.0 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-gov-west-1,
us-west-1, us-west-2):> C< 10.0.17>

=back

B<Microsoft SQL Server 2016>

=over

=item *

C<13.00.2164.0.v1> (supported for all editions, and all AWS regions
except sa-east-1)

=back

B<Microsoft SQL Server 2014>

=over

=item *

C<12.00.5000.0.v1> (supported for all editions, and all AWS regions)

=item *

C<12.00.4422.0.v1> (supported for all editions except Enterprise
Edition, and all AWS regions except us-east-2)

=back

B<Microsoft SQL Server 2012>

=over

=item *

C<11.00.6020.0.v1> (supported for all editions, and all AWS regions)

=item *

C<11.00.5058.0.v1> (supported for all editions, and all AWS regions
except us-east-2)

=item *

C<11.00.2100.60.v1> (supported for all editions, and all AWS regions
except us-east-2)

=back

B<Microsoft SQL Server 2008 R2>

=over

=item *

C<10.50.6529.0.v1> (supported for all editions, and all AWS regions
except us-east-2)

=item *

C<10.50.6000.34.v1> (supported for all editions, and all AWS regions
except us-east-2)

=item *

C<10.50.2789.0.v1> (supported for all editions, and all AWS regions
except us-east-2)

=back

B<MySQL>

=over

=item *

B<Version 5.7 (available in all AWS regions):> C< 5.7.11>

=item *

B<Version 5.7 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-gov-west-1,
us-west-1, us-west-2):> C< 5.7.10>

=item *

B<Version 5.6 (available in all AWS regions):> C< 5.6.29>

=item *

B<Version 5.6 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-gov-west-1,
us-west-1, us-west-2):> C< 5.6.27>

=item *

B<Version 5.6 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-southeast-1, ap-southeast-2, eu-central-1,
eu-west-1, sa-east-1, us-east-1, us-gov-west-1, us-west-1, us-west-2):>
C< 5.6.23>

=item *

B<Version 5.6 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-central-1, eu-west-1, sa-east-1,
us-east-1, us-gov-west-1, us-west-1, us-west-2):> C< 5.6.19a | 5.6.19b
| 5.6.21 | 5.6.21b | 5.6.22>

=item *

B<Version 5.5 (available in all AWS regions):> C< 5.5.46>

=item *

B<Version 5.5 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-southeast-1, ap-southeast-2, eu-central-1,
eu-west-1, sa-east-1, us-east-1, us-gov-west-1, us-west-1, us-west-2):>
C< 5.5.42>

=item *

B<Version 5.5 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-central-1, eu-west-1, sa-east-1,
us-east-1, us-gov-west-1, us-west-1, us-west-2):> C< 5.5.40b | 5.5.41>

=item *

B<Version 5.5 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-west-1, sa-east-1, us-east-1,
us-gov-west-1, us-west-1, us-west-2):> C< 5.5.40 | 5.5.40a>

=back

B<Oracle 12c>

=over

=item *

C<12.1.0.2.v6> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=item *

C<12.1.0.2.v5> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=item *

C<12.1.0.2.v4> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=item *

C<12.1.0.2.v3> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=item *

C<12.1.0.2.v2> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=item *

C<12.1.0.2.v1> (supported for EE in all AWS regions, and SE2 in all AWS
regions except us-gov-west-1)

=back

=over

=item *

C<12.1.0.1.v6> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=item *

C<12.1.0.1.v5> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=item *

C<12.1.0.1.v4> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=item *

C<12.1.0.1.v3> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=item *

C<12.1.0.1.v2> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=item *

C<12.1.0.1.v1> (supported for EE, SE1, and SE, in all AWS regions
except ap-south-1, ap-northeast-2)

=back

B<Oracle 11g>

=over

=item *

C<11.2.0.4.v10> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v9> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v8> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v7> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v6> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v5> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v4> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v3> (supported for EE, SE1, and SE, in all AWS regions)

=item *

C<11.2.0.4.v1> (supported for EE, SE1, and SE, in all AWS regions)

=back

B<PostgreSQL>

=over

=item *

B<Version 9.5 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-west-1, us-west-2):>
C< 9.5.4>

=item *

B<Version 9.5 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-east-2, us-west-1,
us-west-2):> C< 9.5.2>

=item *

B<Version 9.4 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-west-1, us-west-2):>
C< 9.4.9>

=item *

B<Version 9.4 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2,
eu-central-1, eu-west-1, sa-east-1, us-east-1, us-east-2, us-west-1,
us-west-2):> C< 9.4.7>

=item *

B<Version 9.4 (available in all AWS regions):> C< 9.4.5>

=item *

B<Version 9.4 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-southeast-1, ap-southeast-2, eu-central-1,
eu-west-1, sa-east-1, us-east-1, us-gov-west-1, us-west-1, us-west-2):>
C< 9.4.4>

=item *

B<Version 9.4 (available in these AWS regions: ap-northeast-1,
ap-northeast-2, ap-southeast-1, ap-southeast-2, eu-central-1,
eu-west-1, sa-east-1, us-east-1, us-east-2, us-gov-west-1, us-west-1,
us-west-2):> C< 9.4.1>

=item *

B<Version 9.3 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-central-1, eu-west-1, sa-east-1,
us-east-1, us-gov-west-1, us-west-1, us-west-2):> C< 9.3.10 | 9.3.3 |
9.3.5 | 9.3.6 | 9.3.9>

=item *

B<Version 9.3 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-west-1, sa-east-1, us-east-1,
us-gov-west-1, us-west-1, us-west-2):> C< 9.3.1 | 9.3.2>

=item *

B<Version 9.3 (available in these AWS regions: ap-northeast-1,
ap-southeast-1, ap-southeast-2, eu-central-1, eu-west-1, sa-east-1,
us-east-1, us-west-1, us-west-2):> C< 9.3.12 | 9.3.14>

=back




=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.

Constraints: Must be a multiple between 3 and 10 of the storage amount
for the DB instance. Must also be an integer multiple of 1000. For
example, if the size of your DB instance is 500 GB, then your C<Iops>
value can be 2000, 3000, 4000, or 5000.



=head2 KmsKeyId => Str

The KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB instance with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
instance, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

If the C<StorageEncrypted> parameter is true, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default encryption key. AWS KMS creates the default encryption key for
your AWS account. Your AWS account has a different default encryption
key for each AWS region.



=head2 LicenseModel => Str

License model information for this DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MasterUsername => Str

The name of master user for the client DB instance.

B<MySQL>

Constraints:

=over

=item *

Must be 1 to 16 alphanumeric characters.

=item *

First character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back

B<MariaDB>

Constraints:

=over

=item *

Must be 1 to 16 alphanumeric characters.

=item *

Cannot be a reserved word for the chosen database engine.

=back

Type: String

B<Oracle>

Constraints:

=over

=item *

Must be 1 to 30 alphanumeric characters.

=item *

First character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back

B<SQL Server>

Constraints:

=over

=item *

Must be 1 to 128 alphanumeric characters.

=item *

First character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back

B<PostgreSQL>

Constraints:

=over

=item *

Must be 1 to 63 alphanumeric characters.

=item *

First character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master database user. Can be any printable ASCII
character except "/", """, or "@".

Type: String

B<MySQL>

Constraints: Must contain from 8 to 41 characters.

B<MariaDB>

Constraints: Must contain from 8 to 41 characters.

B<Oracle>

Constraints: Must contain from 8 to 30 characters.

B<SQL Server>

Constraints: Must contain from 8 to 128 characters.

B<PostgreSQL>

Constraints: Must contain from 8 to 128 characters.

B<Amazon Aurora>

Constraints: Must contain from 8 to 41 characters.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to To create an IAM role for Amazon RDS Enhanced
Monitoring.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

Specifies if the DB instance is a Multi-AZ deployment. You cannot set
the AvailabilityZone parameter if the MultiAZ parameter is set to true.



=head2 OptionGroupName => Str

Indicates that the DB instance should be associated with the specified
option group.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, cannot be removed from an option group, and that option group
cannot be removed from a DB instance once it is associated with a DB
instance



=head2 Port => Int

The port number on which the database accepts connections.

B<MySQL>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer

B<MariaDB>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer

B<PostgreSQL>

Default: C<5432>

Valid Values: C<1150-65535>

Type: Integer

B<Oracle>

Default: C<1521>

Valid Values: C<1150-65535>

B<SQL Server>

Default: C<1433>

Valid Values: C<1150-65535> except for C<1434>, C<3389>, C<47001>,
C<49152>, and C<49152> through C<49156>.

B<Amazon Aurora>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter. For more information, see DB Instance Backups.

Default: A 30-minute window selected at random from an 8-hour block of
time per region. To see the time blocks available, see Adjusting the
Preferred Maintenance Window in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Times should be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC). For more information, see DB Instance
Maintenance.

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per region, occurring on a random day of the week. To see the time
blocks available, see Adjusting the Preferred Maintenance Window in the
I<Amazon RDS User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 PromotionTier => Int

A value that specifies the order in which an Aurora Replica is promoted
to the primary instance after a failure of the existing primary
instance. For more information, see Fault Tolerance for an Aurora DB
Cluster.

Default: 1

Valid Values: 0 - 15



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the DB instance. A value of
true specifies an Internet-facing instance with a publicly resolvable
DNS name, which resolves to a public IP address. A value of false
specifies an internal instance with a DNS name that resolves to a
private IP address.

Default: The default behavior varies depending on whether a VPC has
been requested or not. The following list shows the default behavior in
each case.

=over

=item *

B<Default VPC:> true

=item *

B<VPC:> false

=back

If no DB subnet group has been specified as part of the request and the
PubliclyAccessible value has not been set, the DB instance will be
publicly accessible. If a specific DB subnet group has been specified
as part of the request and the PubliclyAccessible value has not been
set, the DB instance will be private.



=head2 StorageEncrypted => Bool

Specifies whether the DB instance is encrypted.

Default: false



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified; otherwise
C<standard>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 TdeCredentialArn => Str

The ARN from the Key Store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the Key Store in order to access
the device.



=head2 Timezone => Str

The time zone of the DB instance. The time zone parameter is currently
supported only by Microsoft SQL Server.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB instance.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

