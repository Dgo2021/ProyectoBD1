import { Component, OnInit } from '@angular/core';
import { LoginService } from '../service/login.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  user = {
    email: '',
    password: ''
  };
  empleado: any = {};

  constructor(private loginService: LoginService) { }

  ngOnInit(): void {
  }

  login() {
    if (this.user.email === null) {
      alert('Debe de ingresar un correo valido');
      location.href = '/login';
    } else {
      this.loginService.loginEmpleado(this.user.email).subscribe((req: any) => this.verificarEmpleado(req));
    }
  }
  verificarEmpleado(empleado: any) {
    this.empleado = empleado;
    console.log(this.empleado);

    if (this.empleado === null) {
      alert("El usuario no existe!");
    } else {
      if (this.empleado.contrasenia === this.user.password && this.empleado.email === this.user.email) {
        alert('Bienvenido ' + this.empleado.persona.nombres + " " + this.empleado.persona.apellidos);
        location.href='/personas';
      } else {
        alert("Usuario o password incorrectas");
        location.href='/login';
      }
    }
  }

}
