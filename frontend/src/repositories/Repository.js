// Repository.js
import axios from "axios";
import {environment} from "../environments/environment";

const baseDomain = environment.apiUrl;
// const baseURL = `${baseDomain}/api/v1`;

export default axios.create({
  //60 sec timeout
  timeout: 60000,

  //follow up to 10 HTTP 3xx redirects
  maxRedirects: 10,

  //cap the maximum content length we'll accept to 50MBs, just in case
  maxContentLength: 50 * 1000 * 1000,

  // baseURL,

  // Set validatstatus so axios accepts all status codes.
  validateStatus: function (status) {
    return status >= 200 && status <= 503;
  }
});
