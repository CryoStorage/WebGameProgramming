# Ranked Matches

---

### Entities List

---

### player (**DE**)

- player_id(**PK**)

### matches (**DE**)

- match_id(**PK**)
- date_time
- duration
- map (**FK**)
- agent (**FK**)
- score
- econ_rating
- avg_combat_score
- rank(**FK**)
- division(**FK**)
- kills
- deaths
- assists
- rank
- episode
- act

---

### episode (**EC**)

- episode_id (**PK**)
- name

---

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

### agents (**EC**)

---

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

### roles (**EC**)
1. duelist
1. initiator
1. sentinel
1. controller


### episodes (**EC**)

---

1. IGNITION 
1. FORMATION
1. REFLECTION
1. DISRUPTION
1. DIMENSION
1. REVELATION

### Relations

---

1. a **match** happens in an **act** (1 to m)
1. an **act** happens in an **episode** (1 to m)
1. a **player** has a **rank** while playing a **match** (1 to 1)
1. a **match** is played **in** a **map** (1 to m)
1. an **agent** is played **in** a match (1 to m)
1. an agent has a **role**(1 to 1)

## Diagrams 

--- 

### Relational Model

![relational db model](../img/relational.png)

## Business Rules

---

### Matches

1. Create a match
1. Read a match
1. Read a match based on specific conditions
1. Delete a match

### Maps

1. Create a map
1. Read a map
1. Delete a map


### Agents

1. Create an agent
1. Read an agent
1. Delete an agent

### Ranks

1. Create a rank
1. Read a rank
1. Delete a rank

### Divisions

1. Create a division
1. Read a division
1. Delete a division


### Episodes

1. Create an episode
1. Read an episode
1. Delete an episode


### Acts

1. Create an act
1. Read an act
1. Delete an act

### Roles

1. Create a role
1. Read a role
1. Delete a role

## Validation

---

**score**
- score must follow the following format

       (rounds won by allied team)(/)(rounds won by enemy team)
**date_time**
- date_time must use the following format

        (DD/MM/YY) (H:M:S)
**episodes**
- Episode must be written in all caps

**ranks**
- Ranks must be written in lower case
