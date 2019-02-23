<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<%
// https://javacode.lesnih.info/how-to-send-email-to-jsp-java.html
    Properties props = new Properties();
    props.put("mail.smtp.host", "---insert smtp server----"); //SMTP Host


    Session session = Session.getInstance(props);
    session.setDebug(true);
    MimeMessage msg = new MimeMessage(session);
    msg.setFrom(new InternetAddress("mail@lesnih.info"));
    /// paste the sender's mailbox msg.setSubject("Letter subject");
    msg.setText("Message body");
    msg.setSentDate(new Date());
    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("vitaly@lesnih.info", false));
// we insert the mailbox to whom we send msg.setHeader("Content-Type", "text/plain; charset=UTF-8");
    msg.setHeader("Content-Transfer-Encoding", "8bit");
    Transport.send(msg);
%>