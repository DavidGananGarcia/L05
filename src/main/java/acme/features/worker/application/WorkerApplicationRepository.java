
package acme.features.worker.application;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.applications.Application;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface WorkerApplicationRepository extends AbstractRepository {

	@Query("select ap from Application ap where ap.id = ?1")
	Application findOneApplicationById(int id);

	@Query("select ap from Application ap where ap.worker.id = ?1")
	Collection<Application> findManyByWorkerId(int workerID);

}
