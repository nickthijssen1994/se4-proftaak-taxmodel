import Repository from "../Repository";

const resource = "/controller";

export default {
  // post(token) {
  //   return Repository.post(`${resource}`, {
  //     headers: {
  //       Authorization: `Bearer ${token}`
  //     }
  //   });
  // }
  getAll() {
    return Repository.get(`${resource}`);
  }
}
