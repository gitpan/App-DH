
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.4003",
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.4003"
  },
  "dist_abstract" => "Deploy your DBIx::Class Schema to DDL/Database via DBIx::Class::DeploymentHandler",
  "dist_author" => [
    "kentnl - Kent Fredric (cpan:KENTNL) <kentfredric\@gmail.com>",
    "mst - Matt S. Trout (cpan:MSTROUT) <mst\@shadowcat.co.uk>"
  ],
  "dist_name" => "App-DH",
  "dist_version" => "0.001000",
  "license" => "perl",
  "module_name" => "App::DH",
  "recommends" => {
    "DBIx::Class::Schema::Config" => 0
  },
  "recursive_test_files" => 1,
  "requires" => {
    "DBIx::Class::DeploymentHandler" => 0,
    "Module::Runtime" => 0,
    "Moose" => 0,
    "MooseX::AttributeShortcuts" => 0,
    "MooseX::Getopt" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;