package servicioSetUp;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import modelo.Categoria;
import modelo.Cd;
import modelo.SetUp;
import modelo.Usuario;

//utilidad para preparar unos registros

@Service
@Transactional
public class ServicioSetUp implements InterfazSetUp{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void setUp() {
		Criteria c = 
				sessionFactory.getCurrentSession().
					createCriteria(SetUp.class);
		if ( c.list().size() == 0 ) {
			//preparamos unos registros
			sessionFactory.getCurrentSession().save( 
					new Usuario("Cristina", "Fernandez Pérez", "123", "cris@gmail.com", 31) 
				);
			sessionFactory.getCurrentSession().save( 
					new Usuario("Marta", "Alonso Garcia", "123", "marta@gmail.com", 39)  
				);
			sessionFactory.getCurrentSession().save( 
					new Usuario("Pepe", "Alvarez Rincon", "123", "pepe@gmail.com", 21) 
				);
			//categorias
			Categoria rock = new Categoria("Rock","categoria rock");
			sessionFactory.getCurrentSession().save(
					rock
					);
			Categoria pop = new Categoria("Pop","categoria pop");
			sessionFactory.getCurrentSession().save(
					pop
					);
			Categoria reggueton = new Categoria("Reggueton","categoria reggueton");
			sessionFactory.getCurrentSession().save(
					reggueton
					);

			//cds
			sessionFactory.getCurrentSession().save(
					new Cd("Rock Believer", "Scorpions", 90d, 16, 15.00d, "Universal", true, rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Greatest hits 2", "Queen", 95d, 17, 12.00d, "Parlophone", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Directo", "Rosendo", 100d, 16, 15.20d, "Twins", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Canciones prohibidas", "Extremoduro", 60d, 9, 11.50d, "Warner Music", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Ace freheley", "Kiss", 112d, 17, 18.00d, "Polygram", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("La caye es tuya", "Estopa", 81d, 12, 10.50d, "Bmg", true,  pop)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("The very best", "ACDC", 66d, 13, 15.60d, "Magnetic", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Iron Maiden", "Iron Maiden", 42d, 11, 9.24d, "Castle", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Steal this album", "SOAD", 75d, 16, 12.00d, "Advisory", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Greatest hits", "Metallica ", 120d, 26, 15.75d, "Warner Music", true,  rock)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Greatest hits", "Nicky Jam", 57d, 10, 11.90d, "Sony", true,  reggueton)
					);
			sessionFactory.getCurrentSession().save(
					new Cd("Barrio fino", "Dady Yankee", 91d, 19, 13.00d, "Universal", true,  reggueton)
					);
			//copiar archivos de portada de libros
			//desde una ruta fija
			
			//setup completado
			SetUp setUp = new SetUp();
			setUp.setCompleto(true);
			sessionFactory.getCurrentSession().save(setUp);
			
		} //end if
		
	}//end setUp
	
}







