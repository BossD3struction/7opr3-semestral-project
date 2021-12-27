package cz.osu.app.repositories;

import cz.osu.app.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    void deleteById(long userId);

    User findByNickname(String nickname);
}
