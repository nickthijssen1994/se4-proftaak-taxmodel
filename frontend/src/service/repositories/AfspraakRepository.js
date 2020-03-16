import Repository from "@/service/Repository";

const resource = "/afspraken"

export default {
  // post(token) {
  //   return Repository.post(`${resource}`, {
  //     headers: {
  //       Authorization: `Bearer ${token}`
  //     }
  //   });
  // }
  getById(id, token) {
    return Repository.get(`${resource}/{id}`, {
      headers: {
        Authorization: `Bearer ${token}`
      }
    });
  }
}
