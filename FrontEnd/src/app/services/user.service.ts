import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { User } from '../models/user.model';


@Injectable({
  providedIn: 'root'
})
export class UserService {

  session: any = sessionStorage.getItem('token');


  private url = 'http://127.0.0.1:8000/api/user/';
  private url2 = 'http://127.0.0.1:8000/api/user-profile/'
  private url3 = 'http://127.0.0.1:8000/api/register/'

  constructor(private httpClient: HttpClient) { }
//get all users by token
  getUsers() {
    const token = this.session.replaceAll('"', '');
    console.log(token);
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);
    return this.httpClient.get(this.url, { headers: head_obj });
  }
  //create user
  createUser(user: User) {
    const token = this.session.replaceAll('"', '');
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);
    return this.httpClient.post(this.url3, user);
  }
  //update user by id and token
  updateUser(id: any, user: User) {
    const token = this.session.replaceAll('"', '');
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);

    return this.httpClient.put(this.url + id, user, { headers: head_obj });
  }
//get user profile by token
  getUserById() {
    const token = this.session.replaceAll('"', '');
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);
    return this.httpClient.get(this.url2, { headers: head_obj });
  }
//get user by id by token

  findUserById(id: any) {
    const token = this.session.replaceAll('"', '');
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);
    return this.httpClient.get(this.url + id, { headers: head_obj });
  }
  //delete user by id and token
  deleteById(id: any) {
    const token = this.session.replaceAll('"', '');
    const head_obj = new HttpHeaders().set("Authorization", "Bearer " + token);
    return this.httpClient.delete(this.url + id, { headers: head_obj });
  }
}