import { Component, OnInit } from '@angular/core';
import { RequestsService } from '../_services/requests.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-crud-form',
  templateUrl: './crud-form.component.html',
  styleUrls: ['./crud-form.component.scss']
})
export class CrudFormComponent implements OnInit {

  listUsers: any = [];

  isCreating = false;
  isEditing = false;
  loadingInfo = false;

  user = {
    id: 0,
    name: "",
    email: "",
    password: "123456"
  }

  constructor(private requests: RequestsService,private route: Router) { }

  ngOnInit() {
    this.requests.globalRequest({},'users').subscribe((data) => {
      this.listUsers = data;
    },() => {
      this.route.navigate(['/']);
    });
  }
  editUser(user){
    this.user.id = user.id;
    this.user.name = user.name;
    this.user.email = user.email;
    this.isCreating = false;
    this.isEditing = true;
  }
  createUser(){
    this.user.id = 0;
    this.user.name = "";
    this.user.email = "";
    this.isEditing = false;
    this.isCreating = true;
  }
  postUser(){
    this.loadingInfo = true;
    this.requests.globalRequest(this.user,'postUser').subscribe((data) => {
      this.loadingInfo = false;
      if(this.isEditing){
        let index = this.listUsers.findIndex((item) => {
          return item.id === this.user.id
        });
        this.listUsers[index].name = this.user.name;
        this.listUsers[index].email = this.user.email;
      }else{
        this.listUsers.unshift(data);
      }
      this.isCreating = false;
      this.isEditing = false;
    });
  }
  deleteUser(user){
    let index = this.listUsers.findIndex((item) => {
      return item.id === user.id
    });
    this.requests.globalRequest({id: user.id},'deleteUser').subscribe((data) => {
      this.listUsers.splice(index,1);
    });
  }

}
