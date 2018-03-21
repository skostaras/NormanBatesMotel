package com.stefanosk27.NormanBatesMotel;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
@Service
public class GuestbookDAO {

  @Autowired
  private SessionFactory sessionFactory;

  public void setSessionFactory(SessionFactory sf) {
    this.sessionFactory = sf;
  }

  public List<Guestbook> getAllComments() {
    Session session = this.sessionFactory.getCurrentSession();
    @SuppressWarnings("unchecked")
    List<Guestbook> allcomments = session.createQuery("from Guestbook").list();
    return allcomments;
  }

  public Guestbook getComment(int id) {
    Session session = this.sessionFactory.getCurrentSession();
    Guestbook guestBook = (Guestbook) session.get(Guestbook.class, new Integer(id));
    return guestBook;
  }

  public Guestbook addComment(Guestbook guestBook) {
    Session session = this.sessionFactory.getCurrentSession();
    session.persist(guestBook);
    return guestBook;
  }

  public void updateComment(Guestbook guestBook) {
    Session session = this.sessionFactory.getCurrentSession();
    session.update(guestBook);
  }

  public void deleteComment(int id) {
    Session session = this.sessionFactory.getCurrentSession();
    Guestbook p = (Guestbook) session.load(Guestbook.class, new Integer(id));
    if (null != p) {
      session.delete(p);
    }
  }
}
