package trasua.Service.User;

import org.springframework.stereotype.Service;

import trasua.Entity.Paginates;


@Service
public class PaginatesServiceImpl {
	public Paginates GetInfoPaginates(int totalData, int limit, int currentPage) {
		Paginates paginate = new Paginates();
		
		paginate.setLimit(limit);
		paginate.setTotalPage(SetInfoTotalPage(totalData, limit));
		paginate.setCurrentPage(CheckCurrentPage(currentPage,SetInfoTotalPage(totalData, limit)));
		
		int start = FindStart(paginate.getCurrentPage(),limit);
		paginate.setStart(start);
		int end =FindEnd(paginate.getStart(),limit,totalData);
		paginate.setEnd(end);
		return paginate;
	}

	private int FindEnd(int start, int limit, int totalData) {
		// TODO Auto-generated method stub
		return start+limit > totalData? totalData: (start+limit) -1;
	}

	private int FindStart(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return ((currentPage -1) *limit);
	}

	private int SetInfoTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;

	}

	public int CheckCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
}

