import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private URL = 'http://localhost:8080/empleado'
  constructor(private http: HttpClient) { 

  }
  loginEmpleado(empleado:any){
    return this.http.get<any>(this.URL+"/email/"+empleado).pipe(catchError(e => 'error'));
  }

}
