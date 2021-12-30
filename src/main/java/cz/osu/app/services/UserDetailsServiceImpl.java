package cz.osu.app.services;

import cz.osu.app.models.User;
import cz.osu.app.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String nickname) throws UsernameNotFoundException {

        User user = repository.findByNickname(nickname);
        //return new org.springframework.security.core.userdetails.User(user.getNickname(), user.getPassword(), new ArrayList<>());
        return UserDetailsImpl.build(user);
    }
}
