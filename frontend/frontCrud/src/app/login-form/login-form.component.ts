import { Component, OnInit } from '@angular/core';
import { RequestsService } from '../_services/requests.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.scss']
})
export class LoginFormComponent implements OnInit {

  email;
  password;

  constructor(private requests: RequestsService, private router: Router) { }

  ngOnInit() {
  }
  onLogin(){
    if(this.email && this.password){
      this.requests.globalRequest({email: this.email, password: this.password},'login').subscribe((data:any) => {
        this.requests.getToken(data.success.token);
        this.router.navigate(['crud']);
      },(err) => {
        alert(err.error.error);
      });
    }
  }

}
