# Procesador S-MIPS

El archivo S-MIPS.circ contiene una implementación de un procesador en Logisim que interpreta las instrucciones indicadas en s-mips.pdf.

- el control unit recibe señales de estado y devuelve señales de control.
- la unidad es el 4 para acceder a la RAM.
Adicionalmente posee una caché, con política de escritura write-back y política de reemplazo ( random o LRU ).

# Control-Unit

El control unit posee cuatro branches: 

- las instrucciones que realizan operaciones con los registros.
- leer de la RAM
- escribir en la RAM
- modificar el program counter ( branch + jmps )

# Cache

Posee una caché de 4 bloques, cada bloque posee cuatro líneas, cada una con espacio para 4 datos de la RAM, o sea 2 bits de index y 2 bits de offset.  Con política de escritura Write-Back y política de reemplazo either Random o Least Recenty Used.

Liset:

- Random: 1151 clocks
- LRU: 1157 clocks

# Mejores, Ideas, Bugs

- el circuito por defecto posee cables rojos ( azules), solo se acotejan después una vez que el procesador empieza a funcionar.

- no posee ninguna optimización, ( reducirle la cantidad de clock cycles)

- el branch-control está implícito. ( se puede mejorar haciendo que el instruction decoder de la señal de que branch escoger y el enable sería que hay cmp_en.
