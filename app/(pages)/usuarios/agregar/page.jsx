
"use client";
import { useState } from "react";
import { useRouter } from "next/navigation";

const Agregarpage = () => {
  const router = useRouter();
  const [usuario, setUsuario] = useState({
    nombre: '',
    usuario: '',
    clave: '',
  });
  const [message, setMessage] = useState("");
  const [tipoMessage, setTipoMessage] = useState("");

  const handleChange = (e) => {
    const { name, value } = e.target;
    setUsuario((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch('/api/usuarios', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(usuario),
      });

      if (response.ok) {
        setTipoMessage('success');
        setMessage('Usuario agregado exitosamente');
        // Esperar 3 segundos antes de redirigir
        setTimeout(() => {
          router.push('/usuarios');
        }, 1000);
      } else {
        setMessage('Error al agregar el usuario');
        setTipoMessage('error');
      }
    } catch (error) {
      setMessage('Error al agregar el usuario: ' + error.message);
      setTipoMessage('error');
    }
  };


  
  return (
    <div className="container">
    <form onSubmit={handleSubmit} className="w-50 mx-auto mt-5">
      <div className="card" data-bs-theme="dark">
        <div className="card-header">
          <h4 className="text-center p-2">Agregar Usuario</h4>
        </div>
        <div className="card-body ">
          <div className="mb-3">
            <label className="form-label">Nombre</label>
            <input type="text" className="form-control" name="nombre" value={usuario.nombre} onChange={handleChange} required />
          </div>
          <div className="mb-3">
            <label className="form-label">Usuario</label>
            <input type="text" className="form-control" name="usuario" value={usuario.usuario} onChange={handleChange} required />
          </div>
          <div className="mb-3">
            <label className="form-label">Clave</label>
            <input type="password" className="form-control" name="clave" value={usuario.clave} onChange={handleChange} required />
          </div>
          <div className="mb-3 text-center">
            {message && (
              <div className={`alert ${tipoMessage === 'success' ? 'alert-success' : 'alert-danger'}`}>
                {message}
              </div>
            )}
          </div>
        </div>
        <div className="card-footer text-center">
          <button type="submit" className="btn btn-outline-success me-3">Agregar Usuario</button>
          <button type="button" className="btn btn-outline-info" onClick={() => router.push('/usuarios')}>Regresar</button>
        </div>
      </div>
    </form>
  </div>
  )
}

export default Agregarpage