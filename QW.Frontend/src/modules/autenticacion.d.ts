export interface AutenticacionStatic {
  iniciarSesionEnApi(contexto: any, usuario: string, contrasena: string): Promise<any>;
}
  
declare const autenticacion: AutenticacionStatic;

export default autenticacion;