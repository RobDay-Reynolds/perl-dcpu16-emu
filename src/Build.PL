use Module::Build;

my $build = Module::Build->new(
    module_name => 'Emu::PCPU16',
    license     => 'perl',
    requires    => {
        perl => '5.8.8',
    },
);

$build->create_build_script();
