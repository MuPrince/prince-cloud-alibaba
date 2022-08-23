package com.prince.moment.repository;

import com.prince.moment.entity.po.Comment;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Description : 评论
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:24
 */
public interface CommentRepository extends MongoRepository<Comment, String> {

}
