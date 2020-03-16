import Repository from "@/service/Repository";

const resource = "/afspraken"

export default {
  // post(token) {
  //   let config = {
  //     headers: {Authorization: `Bearer ${token}`}
  //   };
  //   return Repository.post(`${resource}`, config);
  // }
  getById(id, token) {
    let config = {
      headers: {Authorization: `Bearer ${token}`}
    };
    return Repository.get(`${resource}/{id}`, config);
  }
}
