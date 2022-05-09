# Liberate Template Example Tcl File - Sept 2008

set_var slew_lower_rise 0.3
set_var slew_upper_rise 0.7
set_var slew_lower_fall 0.3
set_var slew_upper_fall 0.7

set_var measure_slew_lower_rise 0.3
set_var measure_slew_upper_rise 0.7
set_var measure_slew_lower_fall 0.3
set_var measure_slew_upper_fall 0.7

# Set the maximum output transition time allowed
set_var max_transition 1.5e-09

set cells { INV1X \
 }

define_template -type delay \
        -index_1        {0.250 0.500 0.750 1.250 1.500} \
        -index_2        {0.0150 0.0500 0.1500 0.3000 0.6000} \
        delay_template_5x5

define_template -type power \
        -index_1        {0.250 0.500 0.750 1.250 1.500} \
        -index_2        {0.0150 0.0500 0.1500 0.3000 0.6000} \
        power_template_5x5

define_template -type constraint \
        -index_1  {0.250  0.750 1.500} \
        -index_2  {0.250  0.750 1.500} \
        constraint_template_3x3

set inputs  {IN}
set outputs {ZN}
set clocks {}
set asyncs   {}

define_cell \
        -input $inputs  -output $outputs  -clock $clocks  -async $asyncs \
        -constraint  constraint_template_3x3    \
        -delay       delay_template_5x5 \
        -power       power_template_5x5 \
        $cells


