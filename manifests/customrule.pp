# Rules for non contempled cases
#
# Literal String set
#
define audit::customrule (
                           $customrules = [],
                         ) {
 #
 concat::fragment{ "${audit::params::audit_file} customrule ${name}":
    target  => $audit::params::audit_file,
    order   => '12',
    content => template("${module_name}/customrule.erb"),
  }
}
