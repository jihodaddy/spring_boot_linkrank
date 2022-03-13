package com.boot.linkrank;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.boot.linkrank.board.BoardController;
import com.boot.linkrank.board.IBoardDAO;
import com.boot.linkrank.member.IMemberDAO;
import com.boot.linkrank.member.MemberController;
import com.boot.linkrank.movie.IMovieDAO;
import com.boot.linkrank.movie.MovieController;


@SpringBootApplication
//@ComponentScan(basePackages= {"com.boot.linkrank"})
@ComponentScan(basePackageClasses=MainController.class)
@ComponentScan(basePackageClasses=MemberController.class)
@ComponentScan(basePackageClasses=MovieController.class)
@ComponentScan(basePackageClasses=BoardController.class)
@MapperScan(basePackageClasses = IMemberDAO.class)
@MapperScan(basePackageClasses = IMovieDAO.class)
@MapperScan(basePackageClasses = IBoardDAO.class)
public class SpringBootLinkrankApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootLinkrankApplication.class, args);
	}

}
