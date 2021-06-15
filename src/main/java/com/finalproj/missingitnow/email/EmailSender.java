package com.finalproj.missingitnow.email;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.finalproj.missingitnow.member.model.dao.MemberMapper;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.UUID;

public class EmailSender {
	
	private MemberMapper mapper;
	private EmailDTO email;
	
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public EmailSender(MemberMapper mapper, EmailDTO email, BCryptPasswordEncoder passwordEncoder) {
		
		this.mapper = mapper;
		this.email = email;		
		this.passwordEncoder = passwordEncoder;
	}
	
	
	
    @Autowired
    protected JavaMailSender mailSender;
    public void SendEmail(EmailDTO email, PrivateMemberDTO member) throws Exception {
//        MimeMessage msg = mailSender.createMimeMessage();
//        try {
//            msg.setSubject(email.getSubject());
//            msg.setText(email.getContent());
//            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
//           
//        }catch(MessagingException e) {
//            System.out.println("MessagingException");
//            e.printStackTrace();
//        }
//        try {
//            mailSender.send(msg);
//        }catch(MailException e) {
//            System.out.println("MailException발생");
//            e.printStackTrace();
//        }
    	
    	
    	
    	
    	
    	final String username = "clientesmibox@gmail.com";
        final String password = "Crh0o7cl@";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        try {
        	
        	
			//임시 비밀번호 생성(UUID 이용 - 특수문자는 못넣음 ㅠㅠ)
			String tempPw = UUID.randomUUID().toString().replace("-", ""); // -를 제거
			tempPw = tempPw.substring(0,10); //tempPw를 앞에서부터 10자리 잘라줌
			
			System.out.println("임시 비밀번호 확인 : " + tempPw);
			
			
			email.setSubject(member.getUserName() + "님의 임시비밀번호입니다.");
			
			email.setReceiver(member.getUserEmail());
			//user객체에 임시 비밀번호 담기
			
			email.setContent("임시비밀번호는 : " + tempPw + "입니다.");
        	
        	
        	
        	
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("clientesmibox@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email.getReceiver())
            );
            message.setSubject("==지금 보고 싶다==" + member.getUserName() + "님의 임시비밀번호입니다.");
            message.setText("임시비밀번호는 : " + tempPw + "입니다.");

            Transport.send(message);
            
            
            
            
          //회원 비밀번호를 암호화하여  user객체에 다시 저장
			String securePw = passwordEncoder.encode(tempPw);
			member.setUserPwd(securePw);
			
			//비밀번호 변경
			mapper.pwdChange(member);
            
			
			

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

	
}
