fun solve () : nothing

var NumberOfRings : int;

      fun hanoi (rings : int; ref source, target, auxiliary : char[]) : nothing

         fun move (ref source, target : char[]) : nothing
         {
            puts("Moving from ");
            puts(source);
            puts(" to ");
            puts(target);
            puts(".\n");
         }

      {
$		puti(rings);
         if rings >= 1 then {

			hanoi(rings-1, source, auxiliary, target);
            move(source, target);
            hanoi(rings-1, auxiliary, target, source);
         }
      }

      
{
  puts("Rings: ");
  NumberOfRings <- 4; $geti();

  hanoi(NumberOfRings, "left", "right", "middle");
}
