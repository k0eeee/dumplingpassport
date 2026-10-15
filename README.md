# Dumpling Passport 🥟
### A mixed-reality cooking journey through Poland, Lithuania and the Philippines

<img width="1600" height="2240" alt="poster" src="https://github.com/user-attachments/assets/1cfab3a3-dfb4-405d-a6aa-cd48d6faad25" />

**Team:** Patrycja, Saule, Chloe
**Repository:** [github.com/k0eeee/dumplingpassport](https://github.com/k0eeee/dumplingpassport)

---

## The Idea

*Dumpling Passport* is a mixed-reality cooking game for Meta Quest headsets. The player receives a passport and "travels" to three countries, each one of our home countries. Using **passthrough**, the game turns the player's own room into the kitchen: the cooking station appears on their real table, and a virtual window opens onto each country's kitchen, with a guide character, music and sounds from that place. In every kitchen the player learns to make a traditional dumpling with their own hands, and each finished dish earns a stamp in their passport.

| Country | Dumpling | Kitchen setting |
|---------|----------|-----------------|
| 🇵🇱 Poland | **Pierogi** (e.g. ruskie, with potato and cheese) | A cosy family kitchen preparing for Wigilia (Christmas Eve) |
| 🇱🇹 Lithuania | **Koldūnai** or **Cepelinai** | A rustic countryside kitchen |
| 🇵🇭 Philippines | **Siomai** or **Siopao** | A busy street-food stall |

*(Final dish choices to be confirmed by the team.)*

Dumplings exist in almost every culture, which makes them a great way to show how food connects people. The project is personal to us: each kitchen is based on dishes from our own families and backgrounds.

---

## What Will the Learner Learn?

1. **Ingredients:** what goes into each dumpling, and which ingredients are typical of each country
2. **Techniques:** mixing and kneading dough, rolling and cutting it, preparing fillings, and folding and sealing different dumpling shapes
3. **Cooking methods:** boiling, frying and steaming, and how to tell when a dumpling is done
4. **Recipe order:** how to sequence a recipe from raw ingredients to a finished plate
5. **Culture and language:** where each dish comes from, when it is traditionally eaten, the names of key ingredients in Polish, Lithuanian and Filipino, and the similarities and differences between the three dumplings

---

## How Will They Learn It?

Each kitchen follows the same pattern: **show → try → check**. The steps build on each other: making dough, then filling, then folding, then cooking. Each country also gets slightly harder, from the simple pierogi fold to the more delicate siomai pleats.

**1. Show: learn mode.** A friendly guide character from each country demonstrates every step, with voice-over, highlighted objects and hints. The guide says each ingredient's name in its own language (e.g. cheese: *ser* in Polish, *sūris* in Lithuanian, *keso* in Filipino).

**2. Try: learning by doing.** The player uses real hand movements rather than button presses. They pick up ingredients, crack eggs, knead and roll dough, press out circles, spoon in the filling and pinch the edges closed. This builds muscle memory of the actual technique, which is much closer to real cooking than clicking through a menu. Because the game is in passthrough, the player stays safely in their own space and can walk between stations placed around the room: the fridge for ingredients, the counter for preparing, and the stove for cooking.

**3. Check: feedback, scoring and progression.**
- The game reacts straight away to mistakes: dough that is too dry, a dumpling that bursts because it wasn't sealed, a pot left boiling too long.
- At the end of each dish the player gets a score (out of three stars) and tips for improving.
- *Challenge mode* removes the hints, so the player has to remember the recipe on their own, sometimes against a timer.
- A short ingredient quiz checks the language and culture facts: the guide asks for an ingredient by its local name, and the player picks it up.

**Culture cards and passport stamps.** Short facts, stories and traditions unlock as the player completes steps and are collected in their passport, giving a sense of progress and a reason to replay.

**The final table.** After finishing all three kitchens, the player sets a table with all three dumplings side by side and compares them: dough, filling, shape and cooking method.

---

## Technology and Interaction Libraries

| Technology | Purpose |
|------------|---------|
| **Godot Engine 4** | Game engine for building the kitchens and game logic (GDScript) |
| **OpenXR** (built into Godot 4) | Standard for running the game in XR |
| **Meta Quest headset** | Target hardware; the game will be deployed and tested on the Quest |
| **Godot OpenXR Vendors plugin** | Meta-specific support: exporting to Quest, **passthrough** and **hand tracking** |
| **Meta Scene SDK** (via OpenXR Vendors) | Detecting the player's real table and walls so the cooking station is placed on the real table |
| **Godot XR Tools** | Ready-made interactions: picking up objects, snap zones, pointers for menus, physical buttons |
| **Hand tracking / Touch controllers** | Players can cook with tracked hands or with the controllers |
| **Godot physics (Jolt or built-in)** | Realistic behaviour for ingredients, pots and utensils |
| **Git + GitHub** | Version control and collaboration |

### Godot systems we plan to use

| System | What it does in our game |
|--------|--------------------------|
| **Signals** | Tell the game when a step is completed (dough kneaded, dumpling sealed), which unlocks the next step and updates the score |
| **Timers** | Cooking times, challenge-mode countdowns, and cooking states (raw → cooked → burnt) |
| **Tweens** | Smooth animations: dough changing shape, stamps landing in the passport, UI popping in |
| **Particles** | Steam from pots, flour puffs when kneading, sparkles when a step is done well |
| **Shaders** | Dough and dumplings changing colour as they cook or brown |
| **AnimationPlayer** | Guide characters' gestures and demonstrations |
| **Scene switching** | Moving between the passport menu, the three kitchens and the final table |
| **Reusable scenes** | One `Ingredient`, `Dumpling` and `CookingStation` scene used in all three kitchens, configured per recipe |

### Key interactions

- **Grab:** picking up and placing ingredients and tools
- **Gesture:** kneading, rolling, folding and pinching with hand tracking
- **Point and press:** choosing a country in the passport menu and pressing physical buttons on the stove
- **Snap zones:** a dumpling snapping onto the tray, a pot onto the stove
- **Pour and stir:** adding water, flour and fillings
- **Move around the room:** walking between the fridge, counter and stove stations
- **Speak (stretch goal):** saying an ingredient's name out loud to ask for it; we will investigate speech recognition options on Quest, with pointing as the fallback

---

## Look, Sound and Feel

- **Visual style:** a cosy, cute style with rounded shapes and warm colours. We will make our **own models** of the dumplings, ingredients, tools and guide characters, with materials and UI that match the style of our poster.
- **Sound:** spatial sound effects for every main action (sizzling, boiling, chopping, the stamp), music inspired by each country, and **voice-over that we record ourselves** in Polish, Lithuanian and Filipino with English subtitles.
- **Juice:** tweens, particles, glowing highlights and **haptics** (a small vibration when kneading, pinching a seal or landing a stamp) so every interaction feels good.
- **Comfort:** passthrough and no artificial movement to avoid motion sickness, large readable text, objects at real-world scale, and everything within reach. Any asset we don't make ourselves will be credited with a link.

---

## Testing Plan

- Test each kitchen on the Quest as soon as it is playable, starting with ourselves.
- Test with classmates, friends and family, including people who have never cooked these dishes, and watch where they get stuck.
- Record what we change after each round of testing and include it in the reflection.

---

## Project Management

- **Branches:** one feature branch per feature (e.g. `feature/dough-kneading`, `feature/polish-kitchen`), merged into `main` through pull requests.
- **Commits:** 30–40 commits with clear messages, spread evenly across the three of us.
- **Contributing back:** if we fix or improve anything in a starter repo, we will open a pull request for it.
- **Video:** a public YouTube video showing all features, embedded in this README.

---

## How to Use It

*[To be completed: how to install the game on a Quest, start it and play.]*

## How It Works

*[To be completed: overview of the main scenes and scripts and how they connect.]*

## What We Built Ourselves

*[To be completed.]*

## What We Borrowed

*[To be completed: assets, code and tutorials used, with links.]*

## Video

*[YouTube video to be embedded here.]*

## Reflection

*[To be completed: what we learned, what went well, and what we would do differently.]*

---

## Team

| Name | Role |
|------|------|
| Patrycja | [to be decided] |
| Saule | [to be decided] |
| Chloe | [to be decided] |

*Roles to be decided.*
