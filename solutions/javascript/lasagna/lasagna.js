// @ts-check

/**
 * The number of minutes it takes to prepare a single layer.
 */
const PREPARATION_MINUTES_PER_LAYER = 2;

/**
 * The number of minute it takes to bake a lasagna
 */
export const EXPECTED_MINUTES_IN_OVEN = 40

/**
 * Determines the number of minutes the lasagna still needs to remain in the
 * oven to be properly prepared.
 *
 * @param {number} actualMinutesInOven
 * @returns {number} the number of minutes remaining
 */
export const remainingMinutesInOven = (actualMinutesInOven) =>
  EXPECTED_MINUTES_IN_OVEN - actualMinutesInOven

/**
 * Given a number of layers, determines the total preparation time.
 *
 * @param {number} numberOfLayers
 * @returns {number} the total preparation time
 */
export const preparationTimeInMinutes = (numberOfLayers) =>
  numberOfLayers * PREPARATION_MINUTES_PER_LAYER

/**
 * Calculates the total working time. That is, the time to prepare all the layers
 * of lasagna, and the time already spent in the oven.
 *
 * @param {number} numberOfLayers
 * @param {number} actualMinutesInOven
 * @returns {number} the total working time
 */
export const totalTimeInMinutes = (numberOfLayers, actualMinutesInOven) =>
  preparationTimeInMinutes(numberOfLayers) + actualMinutesInOven
