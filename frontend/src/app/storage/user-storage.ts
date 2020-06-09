// @ts-ignore
import SecureLS from 'secure-ls';

const ls = new SecureLS({encodingType: 'aes', isCompression: false});

export function login(id, name, token) {
  ls.set('isLoggedIn', true);
  ls.set('accountId', id)
  ls.set('name', name);
  ls.set('token', token);
}

export function logout() {
  ls.clear();
}

export function isLoggedIn() {
  return ls.get('isLoggedIn');
}

export function getId() {
   return ls.get('accountId');
}
export function getName() {
  return ls.get('name');
}

export function getToken() {
  return ls.get('token');
}
