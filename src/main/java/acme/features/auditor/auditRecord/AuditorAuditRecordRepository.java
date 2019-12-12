
package acme.features.auditor.auditRecord;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditRecord.AuditRecord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuditorAuditRecordRepository extends AbstractRepository {

	@Query("select aud from AuditRecord aud where aud.id = ?1")
	AuditRecord findOneAuditRecordById(int id);

	@Query("select aud from AuditRecord aud where aud.auditor.id = ?1")
	Collection<AuditRecord> findManyByAuditorId(int auditorId);

}