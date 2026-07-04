# Project ODIN: The Architect's Path

Project ODIN is an immersive, game-like professional portfolio for Jeff Barnes. It is not a resume site with fantasy paint on top. It is a playable world where professional history, leadership philosophy, analytics architecture, AI work, and GitHub projects are revealed through exploration, environmental storytelling, and a contact gate mini-game.

## Sprint 1 Status

Sprint 1 establishes the foundation for the playable vertical slice:

- Cinematic title screen and opening environment
- Procedural Three.js world with fog, lighting, particles, data-river effects, runic gates, realm monoliths, and Corvus companion behavior
- Real-time exploration controls using keyboard and pointer interaction
- World regions mapped to Jeff's professional identity: Archive, Forge, Citadel, Sanctum, Observatory, and Workshop
- Career/project content encoded as discoverable artifacts instead of traditional website sections
- Contact gate mini-game: The Architect's Trial
- Canvas-rendered contact reveal pattern so contact information is not exposed as ordinary HTML text
- Documentation for lore, art direction, technical architecture, security, and Sprint 2 backlog
- Streamlit wrapper for prototype hosting while keeping the game itself web-native

## Run Locally

```bash
npm install
npm run dev
```

Then open the local URL Vite prints in the terminal.

## Optional Streamlit Wrapper

```bash
pip install -r requirements.txt
streamlit run streamlit_app.py
```

The Streamlit wrapper embeds the built web prototype and exists only as a prototyping/deployment convenience. The game engine itself is implemented in `src/` so it can later move cleanly to a production React/FastAPI stack.

## Project Philosophy

The site should make a visitor forget they are browsing a professional profile. Every mechanic has to do at least two jobs:

1. Reveal something meaningful about Jeff's work.
2. Reward curiosity.
3. Feel cinematic, tactile, and intentional.
4. Teach systems thinking without sounding like a lecture.
5. Remain maintainable so the world can evolve with new projects and GitHub activity.

## Current Structure

```text
.
├── docs/
│   ├── art-direction.md
│   ├── contact-gate-security.md
│   ├── sprint-1-world-bible.md
│   └── technical-architecture.md
├── index.html
├── package.json
├── requirements.txt
├── streamlit_app.py
└── src/
    ├── game/
    │   ├── content.js
    │   └── trial.js
    ├── main.js
    └── styles.css
```

## Next Sprint

Sprint 2 should turn the foundation into a stronger playable vertical slice:

- Add real character/companion animation states for Corvus
- Add richer realm transitions and realm-specific sound stems
- Add GitHub API sync to populate Workshop artifacts dynamically
- Add persistent save state and achievements
- Add richer contact-gate validation and server-side unlock token support
- Add professional generated/commissioned artwork pipeline for hero backdrops, UI plates, and region icons
