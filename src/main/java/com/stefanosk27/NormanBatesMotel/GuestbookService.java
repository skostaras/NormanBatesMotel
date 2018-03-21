package com.stefanosk27.NormanBatesMotel;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.stefanosk27.NormanBatesMotel.Guestbook;
import com.stefanosk27.NormanBatesMotel.GuestbookDAO;

@Service("guestbookService")
public class GuestbookService {

	@Autowired
	GuestbookDAO guestbookDao;
	
	@Transactional
	public List<Guestbook> getAllComments() {
		return guestbookDao.getAllComments();
	}

	@Transactional
	public Guestbook getComment(int id) {
		return guestbookDao.getComment(id);
	}

	@Transactional
	public void addComment(Guestbook guestbook) {
		guestbookDao.addComment(guestbook);
	}

	@Transactional
	public void updateComment(Guestbook guestbook) {
		guestbookDao.updateComment(guestbook);
	}

	@Transactional
	public void deleteComment(int id) {
		guestbookDao.deleteComment(id);
	}
}
