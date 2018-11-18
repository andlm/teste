package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import entity.Pessoa;
import persistence.PessoaDao;

@Controller
public class PessoaController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView iniciar() {
		return new ModelAndView("index");
	}

	@RequestMapping(name = "pessoa_cadastrar", value = "/cadastrar.html", method = RequestMethod.POST)
	public ModelAndView cadastrar(Pessoa p) {
		ModelAndView mv = new ModelAndView("index"); // arquivo
		try {
			new PessoaDao().create(p);
			mv.addObject("msg", "Dados Gravados Pessoa !!!");
		} catch (Exception ex) {
			ex.printStackTrace();
			mv.addObject("msg", "Error :" + ex.getMessage());
		}
		return mv;
	}

	@RequestMapping(name = "pessoa_listar", value = "/listar.html", method = RequestMethod.GET)
	public ModelAndView listar() {
		ModelAndView mv = new ModelAndView("listar"); // arquivo
		try {
			mv.addObject("lst", new PessoaDao().findAll());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
	public ModelAndView exluir(@PathVariable Integer id) {
		ModelAndView mv = new ModelAndView("listar"); // arquivo
		try {
			new PessoaDao().delete(id);
			// apagando a pessoa pelo codigo
			mv.addObject("lst", new PessoaDao().findAll());
			// carrega lista
			mv.addObject("msg", "Registro Excluido");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return mv;
	}
}