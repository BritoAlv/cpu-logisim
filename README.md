# Procesador S-MIPS

El archivo S-MIPS.circ contiene una implementación de un procesador en Logisim que interpreta las instrucciones indicadas en s-mips.pdf. Adicionalmente posee una caché, con política de escritura write-back y política de reemplazo ( random o LRU ).

# Mejores, Ideas, Bugs

- el circuito por defecto posee cables rojos ( azules), solo se acotejan después pero los posee.

- lento a la hora de correr los tester ( porque ? )

- el branch-control está implícito.
