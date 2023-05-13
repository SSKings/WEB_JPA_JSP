package model.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import model.dto.Usuario;

public class UsuarioDao {

	private EntityManagerFactory emf;

	public UsuarioDao() {
		super();
		this.emf = Persistence.createEntityManagerFactory("aplicativo");
	}

	public void cadastrar(Usuario usuario) {
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(usuario);
			em.getTransaction().commit();
		}catch(Exception ex) {
			em.getTransaction().rollback();
		}finally {
			em.close();
		}
	}

	public Usuario pesquisar(Usuario usuario){
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("SELECT u FROM Usuario u WHERE u.email = :email", Usuario.class)
					.setParameter("email", usuario.getEmail())
					.getSingleResult();
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		}finally {
			em.close();
		}
	}
}
