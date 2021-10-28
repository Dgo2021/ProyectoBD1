import { Component, OnInit } from '@angular/core';
import { LoginService } from './service/login.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'FrontEnd';

  usuarioLogueado: boolean = false;
  user = {
    email: '',
    password: ''
  };
  empleado: any = {};
  constructor(private loginService: LoginService) {
    console.log(localStorage.getItem('user'))

  }
  ngOnInit(): void {
    //location.href="/login";
  }
  logout() {
    localStorage.removeItem('user');
    console.log('usuario eliminado')
    location.href = '/';

  }
  login() {
    if (this.user.email === null) {
      alert('Debe de ingresar un correo valido');
      location.href = '/';
    } else {
      this.loginService.loginEmpleado(this.user.email).subscribe((req: any) => this.verificarEmpleado(req));
    }
  }
  verificarEmpleado(empleado: any) {
    this.empleado = empleado;
    console.log(this.empleado);

    if (this.empleado === null) {
      alert("El usuario no existe!");
      location.href = "/";
    } else {
      if (this.empleado.contrasenia === this.user.password && this.empleado.email === this.user.email) {
        alert('Bienvenido ' + this.empleado.persona.nombres + " " + this.empleado.persona.apellidos);
        localStorage.setItem('user', JSON.stringify(this.empleado));
        console.log(this.usuarioLogueado);

        let local = JSON.parse(localStorage.getItem('user') || '{}')
        if (local.idrol === 1) {
          location.href = '/personas';
        } else if (local.idrol === 2 || 3) {
          location.href = '/agenda';
        }

      }
    }
  }

}
