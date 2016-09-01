"use strict";

class Cars {
	constructor (model, noise) {
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}

	makeNoise () {
		console.log( `${this.model} makes ${this.noise} and has ${this.wheels} wheels`)
	}
}

module.exports = Cars;