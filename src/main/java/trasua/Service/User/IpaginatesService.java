package trasua.Service.User;

import org.springframework.stereotype.Service;

import trasua.Entity.Paginates;


@Service
public interface IpaginatesService {
public Paginates GetInfoPaginates(Integer totalData, Integer limit, Integer currentPage);
}
