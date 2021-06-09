import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';

@Component({
  selector: 'app-anadir-cont',
  templateUrl: './anadir-cont.component.html',
  styleUrls: ['./anadir-cont.component.css']
})
export class AnadirContComponent implements OnInit {

  formulario!: FormGroup
  constructor( private fb: FormBuilder ) {
    this.crearFormulario();
   }

  ngOnInit(): void {
  }

  crearFormulario(){
    this.formulario = this.fb.group({
      nombre: ['', Validators.required],
      apellido: ['', Validators.required],
      email: ['', Validators.required],
      telefono: ['', [Validators.required, Validators.maxLength(10)]],
      descripcion: [''],
      sexo: [''],
      empresa: ['']
    })
  }

  guardar(){
    console.log(this.formulario.value);
  };
}
