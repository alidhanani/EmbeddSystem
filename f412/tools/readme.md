To run the file we use the command on the terminal
./NuSMV <Filename>
This command will run the file with the defined properties inside to be verified
it doesnt matter if the property is LTL or CTL it will run it.

If you want to do to the NuSMV terminal with your file, you can run this
command
./NuSMV -int <Filename>
by this it will take you to the NuSMV terminal where you can perform
other operations such as printing reachable states, formula and apply
any addition condition you want

Also you can perfomr BMC with your terminal without going inside the file itself
the idea is to run like the following
./NuSMV -bmc <filename>
but for that you have to have a bmc type condition in the smv code.
to run the bmc for a certain bound we apply the following cmd
./NuSMV -bmc -bmc_length <length> <filename>
http://nusmv.fbk.eu/NuSMV/userman/v21/nusmv_4.html
