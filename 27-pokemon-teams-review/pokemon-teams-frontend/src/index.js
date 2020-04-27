//API stuff
const BASE_URL = "http://localhost:3000";
const TRAINERS_URL = `${BASE_URL}/trainers/`;
const POKEMONS_URL = `${BASE_URL}/pokemons/`;

const apiHeaders = {
  "Content-Type": "application/json",
  Accept: "application/json",
};

const get = (url) => {
  return fetch(url).then((resp) => resp.json());
};

const post = (url, id) => {
  return fetch(url, {
    method: "POST",
    headers: apiHeaders,
    body: JSON.stringify({ trainer_id: id }),
  }).then((resp) => resp.json());
};

const destroy = (url, id) => {
  return fetch(url + id, {
    method: "DELETE",
  }).then((resp) => resp.json());
};

const API = { get, post, destroy };

// Consts
const main = document.querySelector("main");

//Functions (don't forget to call the master function!)
const getAllTrainers = () => {
  API.get(TRAINERS_URL).then((trainers) =>
    trainers.forEach((trainer) => makeTrainerCard(trainer))
  );
};

{
  /* <div class="card" data-id="1"><p>Prince</p>
  <button data-trainer-id="1">Add Pokemon</button>
  <ul>
    <li>Jacey (Kakuna) <button class="release" data-pokemon-id="140">Release</button></li>
    <li>Zachariah (Ditto) <button class="release" data-pokemon-id="141">Release</button></li>
    <li>Mittie (Farfetch'd) <button class="release" data-pokemon-id="149">Release</button></li>
    <li>Rosetta (Eevee) <button class="release" data-pokemon-id="150">Release</button></li>
    <li>Rod (Beedrill) <button class="release" data-pokemon-id="151">Release</button></li>
  </ul>
</div> */
}

const makeTrainerCard = (trainer) => {
  const div = document.createElement("div");
  div.className = "card";

  const h3 = document.createElement("h3");
  h3.innerText = trainer.name;

  const addButton = document.createElement("button");
  addButton.innerText = "Add Pokemon";
  addButton.addEventListener("click", () =>
    addPokemonToCard(trainer, ul, addButton)
  );
  addButton.disabled = trainer.pokemons.length >= 6;

  const ul = document.createElement("ul");
  ul.className = "pokemon-ul";
  trainer.pokemons.forEach((pokemon) =>
    makeLi(pokemon, ul, trainer, addButton)
  );
  div.append(h3, addButton, ul);
  main.append(div);
};

const addPokemonToCard = (trainer, ul, button) => {
  API.post(POKEMONS_URL, trainer.id).then((pokemon) => {
    trainer.pokemons.push(pokemon);
    button.disabled = trainer.pokemons.length >= 6;
    makeLi(pokemon, ul, trainer, button);
  });
};

const makeLi = (pokemon, parentElement, trainer, button) => {
  const li = document.createElement("li");
  li.innerText = `${pokemon.nickname} (${pokemon.species})`;

  const releaseButton = document.createElement("button");
  releaseButton.innerText = "Release";
  releaseButton.className = "release";
  releaseButton.addEventListener("click", (e) =>
    releasePokemon(e, pokemon.id, button, trainer)
  );

  li.append(releaseButton);
  parentElement.append(li);
};

const releasePokemon = (e, id, button, trainer) => {
  API.destroy(POKEMONS_URL, id).then(() => {
    trainer.pokemons = trainer.pokemons.filter((pokemon) => pokemon.id !== id);
    button.disabled = trainer.pokemons.length >= 6;
    e.target.parentElement.remove();
  });
};

getAllTrainers();
