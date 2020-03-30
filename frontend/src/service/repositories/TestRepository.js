import Repository from "../Repository";

const resource = "/beers";

export default {
  getRandom() {
    return Repository.get(`${resource}/random`);
  }
}
