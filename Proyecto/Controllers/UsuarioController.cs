using Microsoft.AspNetCore.Mvc;
using Proyecto.WcfServicio;
using Proyecto.Data;
using System.Linq;

namespace Proyecto.Web.Controllers
{
    public class UsuarioController : Controller
    {
        private readonly IUsuarioService _usuarioService;

        public UsuarioController(IUsuarioService usuarioService)
        {
            _usuarioService = usuarioService;
        }

        public IActionResult Index()
        {
            var usuarios = _usuarioService.ConsultarUsuarios();
            return View(usuarios);
        }

        public IActionResult Crear()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Crear(Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                _usuarioService.AgregarUsuario(usuario);
                return RedirectToAction("Index");
            }
            return View(usuario);
        }

        public IActionResult Editar(int id)
        {
            var usuario = _usuarioService.ConsultarUsuario(id);
            if (usuario == null)
            {
                return NotFound();
            }
            return View(usuario);
        }

        [HttpPost]
        public IActionResult Editar(Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                _usuarioService.ModificarUsuario(usuario);
                return RedirectToAction("Index");
            }
            return View(usuario);
        }

        public IActionResult Eliminar(int id)
        {
            var usuario = _usuarioService.ConsultarUsuario(id);
            if (usuario == null)
            {
                return NotFound();
            }
            return View(usuario);
        }

        [HttpPost, ActionName("Eliminar")]
        public IActionResult EliminarConfirmado(int id)
        {
            _usuarioService.EliminarUsuario(id);
            return RedirectToAction("Index");
        }
    }
}
