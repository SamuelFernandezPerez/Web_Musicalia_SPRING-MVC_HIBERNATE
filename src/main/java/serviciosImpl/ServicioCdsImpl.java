package serviciosImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import constantes.Paginacion;
import constantesSQL.ConstantesSQL;
import modelo.Categoria;
import modelo.Cd;
import servicios.ServicioCds;


//implementacion de las operaciones con libros
//usando hibernate

@Service
@Transactional
public class ServicioCdsImpl implements ServicioCds{

	//todas las operaciones con hibernate
	//se haran a traves del siguiente elemento
	
	//el siguiente elemento es la bean 
	//sessionFactory definida en datasource.xml
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void registarCd(Cd cd) {
		//ejemplo registrando la categoria de id 1
		Categoria c = (Categoria) sessionFactory.getCurrentSession().get(Categoria.class, cd.getIdCategoria());
		cd.setCategoria(c);
		sessionFactory.getCurrentSession().save(cd);
	}

	@Override
	public List<Cd> obtenerCds(String titulo, int comienzo) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(Cd.class);
		c.add(Restrictions.eq("alta",true));
		c.add(Restrictions.like("titulo", "%"+titulo+"%"));
		c.addOrder(Order.desc("id"));
		c.setFirstResult(comienzo);
		c.setMaxResults(Paginacion.RESULTADOS_POR_PAGINA);
		return c.list();
	}

	@Override
	public void borrarCd(int id) {
		Cd c = (Cd)sessionFactory.getCurrentSession().get(Cd.class,id);
		c.setAlta(false);
		sessionFactory.getCurrentSession().update(c);
	}

	@Override
	public void editarCd(Cd cd, int id) {
		//en un futuro no pediremos la id
		sessionFactory.getCurrentSession().merge(cd);
	}

	@Override
	public Cd obtenerCdsPorId(int id) {
		return (Cd)sessionFactory.getCurrentSession().get(Cd.class, id);
		
	}

	@Override
	public void guardarCambiosCd(Cd cd) {
		Categoria c = 
				(Categoria)
				sessionFactory.getCurrentSession().
					get(Categoria.class,cd.getIdCategoria());
		cd.setCategoria(c);
		sessionFactory.getCurrentSession().merge(cd);
	}
	@Override
	public int obtenerTotalDeCds(String titulo) {
		SQLQuery query = sessionFactory.getCurrentSession().
				createSQLQuery(ConstantesSQL.OBTENER_TOTAL_CDS);
		query.setParameter("titulo", "%"+titulo+"%");
		
		return Integer.parseInt(query.list().get(0).toString());
	}
	
	
}
