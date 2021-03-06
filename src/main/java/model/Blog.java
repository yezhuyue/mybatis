package model;

import java.util.Date;

public class Blog {

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column blog.id
     *
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column blog.title
     *
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column blog.content
     *
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column blog.user_id
     *
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column blog.pub_date
     *
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    private Date pubDate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column blog.id
     *
     * @return the value of blog.id
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column blog.id
     *
     * @param id the value for blog.id
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column blog.title
     *
     * @return the value of blog.title
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column blog.title
     *
     * @param title the value for blog.title
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column blog.content
     *
     * @return the value of blog.content
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column blog.content
     *
     * @param content the value for blog.content
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column blog.user_id
     *
     * @return the value of blog.user_id
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column blog.user_id
     *
     * @param userId the value for blog.user_id
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column blog.pub_date
     *
     * @return the value of blog.pub_date
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public Date getPubDate() {
        return pubDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column blog.pub_date
     *
     * @param pubDate the value for blog.pub_date
     * @mbg.generated Tue Mar 28 16:38:30 CST 2017
     */
    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "user=" + user +
                ", id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", userId='" + userId + '\'' +
                ", pubDate=" + pubDate +
                '}';
    }
}
