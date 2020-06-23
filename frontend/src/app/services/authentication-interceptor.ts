import {HttpEvent, HttpHandler, HttpInterceptor, HttpRequest} from '@angular/common/http';
import {Injectable} from '@angular/core';
import {Observable} from 'rxjs';
import {getToken, isLoggedIn} from './user-storage';

@Injectable()
export class AuthenticationInterceptor implements HttpInterceptor {

  constructor() {
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

    const token = getToken();

    if (isLoggedIn() && token) {
      const authReq = request.clone({
        headers: request.headers.set('Authorization', 'Bearer ' + token)
      });

      return next.handle(authReq);
    } else {
      return next.handle(request);
    }
  }
}
