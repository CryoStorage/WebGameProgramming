# Partidas Clasificadas

---

### Listado de Entidades

---

### matches (**EC**)
- match_id(**PK**)
- date_time
- map (**FK**)
- agent (**FK**)
- score
- k_d_a
- econ_rating
- avg_combat_score

### maps (**EC**)

1. bind
1. haven
1. split
1. ascent
1. icebox
1. breeze
1. fracture
1. pearl
1. lotus

---

### agents (**EC**)
1. astra
1. breach
1. brimstone
1. chamber
1. cypher
1. gekko
1. jett
1. kay/o
1. killjoy
1. neon
1. omen
1. phoenix
1. raze
1. reyna
1. sage
1. skye
1. sova
1. viper
1. yoru


## Relations

---

1. a **match** is played **in** a map (1 to m)
1. an **agent** is played **in** a match (1 to m)

## Diagrams 

--- 

### Relational Model

![relational db model](../img/relational.jpg)



